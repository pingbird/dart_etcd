import 'dart:convert';

import 'package:fixnum/fixnum.dart';

import 'etcdserverpb/rpc.pbgrpc.dart' as pb;
import 'kv.dart';
import 'mvccpb/kv.pb.dart' as pb;
import 'response.dart';

abstract class WatchRequest {
  pb.WatchRequest toWatchRequestProto();
}

enum FilterType {
  noput,
  nodelete;

  factory FilterType.fromProto(pb.WatchCreateRequest_FilterType proto) {
    switch (proto) {
      case pb.WatchCreateRequest_FilterType.NOPUT:
        return FilterType.noput;
      case pb.WatchCreateRequest_FilterType.NODELETE:
        return FilterType.nodelete;
      default:
        throw ArgumentError.value(proto);
    }
  }

  pb.WatchCreateRequest_FilterType toProto() {
    switch (this) {
      case FilterType.noput:
        return pb.WatchCreateRequest_FilterType.NOPUT;
      case FilterType.nodelete:
        return pb.WatchCreateRequest_FilterType.NODELETE;
    }
  }
}

class WatchCreateRequest implements WatchRequest {
  WatchCreateRequest({
    required String key,
    String? rangeEnd,
    this.startRevision,
    this.progressNotify,
    this.filters,
    this.prevKV,
    this.watchId,
    this.fragment,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd != null ? utf8.encode(rangeEnd) : null;

  final List<int> keyBytes;
  late final key = utf8.decode(keyBytes);
  final List<int>? rangeEndBytes;
  late final rangeEnd =
      rangeEndBytes == null ? null : utf8.decode(rangeEndBytes!);
  final int? startRevision;
  final bool? progressNotify;
  final List<FilterType>? filters;
  final bool? prevKV;
  final int? watchId;
  final bool? fragment;

  @override
  pb.WatchRequest toWatchRequestProto() {
    final proto = pb.WatchCreateRequest()..key = keyBytes;
    if (rangeEndBytes != null) {
      proto.rangeEnd = rangeEndBytes!;
    }
    if (startRevision != null) {
      proto.startRevision = Int64(startRevision!);
    }
    if (progressNotify != null) {
      proto.progressNotify = progressNotify!;
    }
    if (filters != null) {
      proto.filters.addAll(filters!.map((e) => e.toProto()));
    }
    if (prevKV != null) {
      proto.prevKv = prevKV!;
    }
    if (watchId != null) {
      proto.watchId = Int64(watchId!);
    }
    if (fragment != null) {
      proto.fragment = fragment!;
    }
    return pb.WatchRequest()..createRequest = proto;
  }
}

class WatchCancelRequest implements WatchRequest {
  WatchCancelRequest(this.watchId);

  final int watchId;

  @override
  pb.WatchRequest toWatchRequestProto() {
    return pb.WatchRequest()
      ..cancelRequest = pb.WatchCancelRequest()
      ..cancelRequest.watchId = Int64(watchId);
  }
}

class WatchProgressRequest implements WatchRequest {
  @override
  pb.WatchRequest toWatchRequestProto() {
    return pb.WatchRequest()..progressRequest = pb.WatchProgressRequest();
  }
}

enum WatchEventType {
  put,
  delete;

  factory WatchEventType.fromProto(pb.Event_EventType proto) {
    switch (proto) {
      case pb.Event_EventType.PUT:
        return WatchEventType.put;
      case pb.Event_EventType.DELETE:
        return WatchEventType.delete;
      default:
        throw ArgumentError.value(proto);
    }
  }

  pb.Event_EventType toProto() {
    switch (this) {
      case WatchEventType.put:
        return pb.Event_EventType.PUT;
      case WatchEventType.delete:
        return pb.Event_EventType.DELETE;
    }
  }
}

class WatchEvent {
  WatchEvent.fromProto(this.proto);

  final pb.Event proto;

  late final WatchEventType type = WatchEventType.fromProto(proto.type);
  late final entry = EtcdEntry.fromProto(proto.kv);
  late final prevEntry =
      proto.hasPrevKv() ? EtcdEntry.fromProto(proto.prevKv) : null;
}

class WatchResponse implements EtcdResponse {
  WatchResponse.fromProto(this.proto);

  final pb.WatchResponse proto;

  @override
  ResponseHeader get header => ResponseHeader.fromProto(proto.header);

  int get watchId => proto.watchId.toInt();
  bool get created => proto.created;
  bool get canceled => proto.canceled;
  int get compactRevision => proto.compactRevision.toInt();
  String get cancelReason => proto.cancelReason;
  bool get fragment => proto.fragment;

  List<WatchEvent> get events =>
      proto.events.map((e) => WatchEvent.fromProto(e)).toList();
}

class WatchClient {
  WatchClient.fromChannel(this.inner);

  final pb.WatchClient inner;

  Stream<WatchResponse> start(Stream<WatchRequest> requests) {
    return inner
        .watch(requests.map((e) => e.toWatchRequestProto()))
        .map((e) => WatchResponse.fromProto(e));
  }
}
