import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';

import 'etcdserverpb/rpc.pbgrpc.dart' as pb;
import 'mvccpb/kv.pb.dart' as pb;
import 'response.dart';

abstract class RequestOp {
  pb.RequestOp toRequestOpProto();
}

abstract class ResponseOp {
  factory ResponseOp.fromProto(pb.ResponseOp proto) {
    if (proto.hasResponseRange()) {
      return RangeResponse.fromProto(proto.responseRange);
    } else if (proto.hasResponsePut()) {
      return PutResponse.fromProto(proto.responsePut);
    } else if (proto.hasResponseDeleteRange()) {
      return DeleteRangeResponse.fromProto(proto.responseDeleteRange);
    } else if (proto.hasResponseTxn()) {
      return TxnResponse.fromProto(proto.responseTxn);
    } else {
      throw ArgumentError.value(proto);
    }
  }
}

enum SortOrder {
  none,
  asc,
  desc;

  static SortOrder fromProto(pb.RangeRequest_SortOrder proto) {
    switch (proto) {
      case pb.RangeRequest_SortOrder.NONE:
        return SortOrder.none;
      case pb.RangeRequest_SortOrder.ASCEND:
        return SortOrder.asc;
      case pb.RangeRequest_SortOrder.DESCEND:
        return SortOrder.desc;
      default:
        throw ArgumentError.value(proto);
    }
  }

  pb.RangeRequest_SortOrder toProto() {
    switch (this) {
      case SortOrder.none:
        return pb.RangeRequest_SortOrder.NONE;
      case SortOrder.asc:
        return pb.RangeRequest_SortOrder.ASCEND;
      case SortOrder.desc:
        return pb.RangeRequest_SortOrder.DESCEND;
      default:
        throw ArgumentError.value(this);
    }
  }
}

enum SortTarget {
  key,
  version,
  create,
  mod,
  value;

  static SortTarget fromProto(pb.RangeRequest_SortTarget proto) {
    switch (proto) {
      case pb.RangeRequest_SortTarget.KEY:
        return SortTarget.key;
      case pb.RangeRequest_SortTarget.VERSION:
        return SortTarget.version;
      case pb.RangeRequest_SortTarget.CREATE:
        return SortTarget.create;
      case pb.RangeRequest_SortTarget.MOD:
        return SortTarget.mod;
      case pb.RangeRequest_SortTarget.VALUE:
        return SortTarget.value;
      default:
        throw ArgumentError.value(proto);
    }
  }

  pb.RangeRequest_SortTarget toProto() {
    switch (this) {
      case SortTarget.key:
        return pb.RangeRequest_SortTarget.KEY;
      case SortTarget.version:
        return pb.RangeRequest_SortTarget.VERSION;
      case SortTarget.create:
        return pb.RangeRequest_SortTarget.CREATE;
      case SortTarget.mod:
        return pb.RangeRequest_SortTarget.MOD;
      case SortTarget.value:
        return pb.RangeRequest_SortTarget.VALUE;
      default:
        throw ArgumentError.value(this);
    }
  }
}

class RangeRequest implements RequestOp {
  RangeRequest({
    required String key,
    String? rangeEnd,
    this.limit,
    this.revision,
    this.sortOrder,
    this.sortTarget,
    this.serializable = true,
    this.keysOnly,
    this.countOnly,
    this.minModify,
    this.maxModify,
    this.minCreate,
    this.maxCreate,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd);

  RangeRequest.fromBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    this.limit,
    this.revision,
    this.sortOrder,
    this.sortTarget,
    this.serializable = true,
    this.keysOnly,
    this.countOnly,
    this.minModify,
    this.maxModify,
    this.minCreate,
    this.maxCreate,
  });

  final List<int> keyBytes;
  late final String key = utf8.decode(keyBytes);
  final List<int>? rangeEndBytes;
  late final String? rangeEnd =
      rangeEndBytes == null ? null : utf8.decode(rangeEndBytes!);
  final int? limit;
  final int? revision;
  final SortOrder? sortOrder;
  final SortTarget? sortTarget;
  final bool? serializable;
  final bool? keysOnly;
  final bool? countOnly;
  final int? minModify;
  final int? maxModify;
  final int? minCreate;
  final int? maxCreate;

  pb.RangeRequest toProto() {
    final proto = pb.RangeRequest()..key = keyBytes;
    if (rangeEndBytes != null) {
      proto.rangeEnd = rangeEndBytes!;
    }
    if (limit != null) {
      proto.limit = Int64(limit!);
    }
    if (revision != null) {
      proto.revision = Int64(revision!);
    }
    if (sortOrder != null) {
      proto.sortOrder = sortOrder!.toProto();
    }
    if (sortTarget != null) {
      proto.sortTarget = sortTarget!.toProto();
    }
    if (serializable != null) {
      proto.serializable = serializable!;
    }
    if (keysOnly != null) {
      proto.keysOnly = keysOnly!;
    }
    if (countOnly != null) {
      proto.countOnly = countOnly!;
    }
    if (minModify != null) {
      proto.minModRevision = Int64(minModify!);
    }
    if (maxModify != null) {
      proto.maxModRevision = Int64(maxModify!);
    }
    if (minCreate != null) {
      proto.minCreateRevision = Int64(minCreate!);
    }
    if (maxCreate != null) {
      proto.maxCreateRevision = Int64(maxCreate!);
    }
    return proto;
  }

  @override
  pb.RequestOp toRequestOpProto() {
    return pb.RequestOp()..requestRange = toProto();
  }
}

class EtcdEntry {
  EtcdEntry.fromProto(this.proto);
  final pb.KeyValue proto;
  late final keyBytes = proto.key;
  late final String key = utf8.decode(keyBytes);
  late final valueBytes = proto.value;
  late final String value = utf8.decode(valueBytes);
  late final int createRevision = proto.createRevision.toInt();
  late final int modRevision = proto.modRevision.toInt();
  late final int version = proto.version.toInt();
  late final int lease = proto.lease.toInt();

  @override
  String toString() {
    if (valueBytes.length > 200) {
      final valueStr = jsonEncode(value.substring(0, 500));
      return '${jsonEncode(key)}: ${valueStr.substring(0, min(valueStr.length - 1, 298))}...';
    } else {
      return '${jsonEncode(key)}: ${jsonEncode(value)}';
    }
  }
}

class RangeResponse implements EtcdResponse, ResponseOp {
  RangeResponse.fromProto(this.proto);
  final pb.RangeResponse proto;
  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final kvs =
      proto.kvs.map((kv) => EtcdEntry.fromProto(kv)).toList(growable: false);
  late final bool more = proto.more;
  late final int count = proto.count.toInt();
}

class PutRequest implements RequestOp {
  PutRequest({
    required String key,
    required String value,
    this.lease,
    this.prevKV,
    this.ignoreValue,
    this.ignoreLease,
  })  : keyBytes = utf8.encode(key),
        valueBytes = utf8.encode(value);

  PutRequest.fromBytes({
    required this.keyBytes,
    required this.valueBytes,
    this.lease,
    this.prevKV,
    this.ignoreValue,
    this.ignoreLease,
  });

  final List<int> keyBytes;
  late final String key = utf8.decode(keyBytes);
  final List<int> valueBytes;
  late final String value = utf8.decode(valueBytes);
  final int? lease;
  final bool? prevKV;
  final bool? ignoreValue;
  final bool? ignoreLease;

  pb.PutRequest toProto() {
    final proto = pb.PutRequest()
      ..key = keyBytes
      ..value = valueBytes;
    if (lease != null) {
      proto.lease = Int64(lease!);
    }
    if (prevKV != null) {
      proto.prevKv = prevKV!;
    }
    if (ignoreValue != null) {
      proto.ignoreValue = ignoreValue!;
    }
    if (ignoreLease != null) {
      proto.ignoreLease = ignoreLease!;
    }
    return proto;
  }

  @override
  pb.RequestOp toRequestOpProto() {
    return pb.RequestOp()..requestPut = toProto();
  }
}

class PutResponse implements EtcdResponse, ResponseOp {
  PutResponse.fromProto(this.proto);
  final pb.PutResponse proto;
  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final EtcdEntry prevKv = EtcdEntry.fromProto(proto.prevKv);
}

class DeleteRangeRequest implements RequestOp {
  DeleteRangeRequest({
    required String key,
    String? rangeEnd,
    this.prevKV,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd);

  DeleteRangeRequest.fromBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    this.prevKV,
  });

  final List<int> keyBytes;
  late final String key = utf8.decode(keyBytes);
  final List<int>? rangeEndBytes;
  late final String? rangeEnd =
      rangeEndBytes == null ? null : utf8.decode(rangeEndBytes!);
  final bool? prevKV;

  pb.DeleteRangeRequest toProto() {
    final proto = pb.DeleteRangeRequest()..key = keyBytes;
    if (rangeEndBytes != null) {
      proto.rangeEnd = rangeEndBytes!;
    }
    if (prevKV != null) {
      proto.prevKv = prevKV!;
    }
    return proto;
  }

  @override
  pb.RequestOp toRequestOpProto() {
    return pb.RequestOp()..requestDeleteRange = toProto();
  }
}

class DeleteRangeResponse implements EtcdResponse, ResponseOp {
  DeleteRangeResponse.fromProto(this.proto);
  final pb.DeleteRangeResponse proto;
  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final int deleted = proto.deleted.toInt();
  late final List<EtcdEntry> prevKvs = proto.prevKvs
      .map((kv) => EtcdEntry.fromProto(kv))
      .toList(growable: false);
}

enum CompareOperator {
  equal,
  greater,
  less,
  notEqual;

  static CompareOperator fromProto(pb.Compare_CompareResult proto) {
    switch (proto) {
      case pb.Compare_CompareResult.EQUAL:
        return CompareOperator.equal;
      case pb.Compare_CompareResult.GREATER:
        return CompareOperator.greater;
      case pb.Compare_CompareResult.LESS:
        return CompareOperator.less;
      case pb.Compare_CompareResult.NOT_EQUAL:
        return CompareOperator.notEqual;
      default:
        throw ArgumentError.value(proto);
    }
  }

  pb.Compare_CompareResult toProto() {
    switch (this) {
      case CompareOperator.equal:
        return pb.Compare_CompareResult.EQUAL;
      case CompareOperator.greater:
        return pb.Compare_CompareResult.GREATER;
      case CompareOperator.less:
        return pb.Compare_CompareResult.LESS;
      case CompareOperator.notEqual:
        return pb.Compare_CompareResult.NOT_EQUAL;
      default:
        throw ArgumentError.value(this);
    }
  }
}

enum CompareTarget {
  version,
  create,
  mod,
  value,
  lease;

  static CompareTarget fromProto(pb.Compare_CompareTarget proto) {
    switch (proto) {
      case pb.Compare_CompareTarget.VERSION:
        return CompareTarget.version;
      case pb.Compare_CompareTarget.CREATE:
        return CompareTarget.create;
      case pb.Compare_CompareTarget.MOD:
        return CompareTarget.mod;
      case pb.Compare_CompareTarget.VALUE:
        return CompareTarget.value;
      case pb.Compare_CompareTarget.LEASE:
        return CompareTarget.lease;
      default:
        throw ArgumentError.value(proto);
    }
  }

  pb.Compare_CompareTarget toProto() {
    switch (this) {
      case CompareTarget.version:
        return pb.Compare_CompareTarget.VERSION;
      case CompareTarget.create:
        return pb.Compare_CompareTarget.CREATE;
      case CompareTarget.mod:
        return pb.Compare_CompareTarget.MOD;
      case CompareTarget.value:
        return pb.Compare_CompareTarget.VALUE;
      case CompareTarget.lease:
        return pb.Compare_CompareTarget.LEASE;
      default:
        throw ArgumentError.value(this);
    }
  }
}

class Compare {
  Compare.version({
    required String key,
    String? rangeEnd,
    required this.operator,
    required this.version,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd),
        target = CompareTarget.version,
        valueBytes = null,
        createRevision = null,
        modifyRevision = null,
        lease = null;

  Compare.versionBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    required this.operator,
    required this.version,
  })  : target = CompareTarget.version,
        valueBytes = null,
        createRevision = null,
        modifyRevision = null,
        lease = null;

  Compare.create({
    required String key,
    String? rangeEnd,
    required this.operator,
    required int this.createRevision,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd),
        target = CompareTarget.create,
        valueBytes = null,
        version = null,
        modifyRevision = null,
        lease = null;

  Compare.createBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    required this.operator,
    required int this.createRevision,
  })  : target = CompareTarget.create,
        valueBytes = null,
        version = null,
        modifyRevision = null,
        lease = null;

  Compare.mod({
    required String key,
    String? rangeEnd,
    required this.operator,
    required int this.modifyRevision,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd),
        target = CompareTarget.mod,
        valueBytes = null,
        version = null,
        createRevision = null,
        lease = null;

  Compare.modBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    required this.operator,
    required int this.modifyRevision,
  })  : target = CompareTarget.mod,
        valueBytes = null,
        version = null,
        createRevision = null,
        lease = null;

  Compare.value({
    required String key,
    String? rangeEnd,
    required this.operator,
    required String value,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd),
        target = CompareTarget.value,
        valueBytes = utf8.encode(value),
        version = null,
        createRevision = null,
        modifyRevision = null,
        lease = null;

  Compare.valueBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    required this.operator,
    required List<int> this.valueBytes,
  })  : target = CompareTarget.value,
        version = null,
        createRevision = null,
        modifyRevision = null,
        lease = null;

  Compare.lease({
    required String key,
    String? rangeEnd,
    required this.operator,
    required int this.lease,
  })  : keyBytes = utf8.encode(key),
        rangeEndBytes = rangeEnd == null ? null : utf8.encode(rangeEnd),
        target = CompareTarget.lease,
        valueBytes = null,
        version = null,
        createRevision = null,
        modifyRevision = null;

  Compare.leaseBytes({
    required this.keyBytes,
    this.rangeEndBytes,
    required this.operator,
    required int this.lease,
  })  : target = CompareTarget.lease,
        valueBytes = null,
        version = null,
        createRevision = null,
        modifyRevision = null;

  final List<int> keyBytes;
  late final String key = utf8.decode(keyBytes);
  final List<int>? rangeEndBytes;
  late final String? rangeEnd =
      rangeEndBytes == null ? null : utf8.decode(rangeEndBytes!);
  final CompareOperator operator;
  final CompareTarget target;
  final int? version;
  final int? createRevision;
  final int? modifyRevision;
  final List<int>? valueBytes;
  late final String? value =
      valueBytes == null ? null : utf8.decode(valueBytes!);
  final int? lease;

  pb.Compare toProto() {
    final proto = pb.Compare()
      ..result = operator.toProto()
      ..target = target.toProto();
    if (rangeEndBytes != null) {
      proto.rangeEnd = rangeEndBytes!;
    }
    if (version != null) {
      proto.version = Int64(version!);
    }
    if (createRevision != null) {
      proto.createRevision = Int64(createRevision!);
    }
    if (modifyRevision != null) {
      proto.modRevision = Int64(modifyRevision!);
    }
    if (valueBytes != null) {
      proto.value = valueBytes!;
    }
    if (lease != null) {
      proto.lease = Int64(lease!);
    }
    return proto;
  }
}

class TxnRequest implements RequestOp {
  TxnRequest({
    required this.compare,
    this.success = const [],
    this.failure = const [],
  });

  final List<Compare> compare;
  final List<RequestOp> success;
  final List<RequestOp> failure;

  pb.TxnRequest toProto() {
    final proto = pb.TxnRequest();
    proto.compare.addAll(compare.map((c) => c.toProto()));
    proto.success.addAll(success.map((op) => op.toRequestOpProto()));
    proto.failure.addAll(failure.map((op) => op.toRequestOpProto()));
    return proto;
  }

  @override
  pb.RequestOp toRequestOpProto() {
    return pb.RequestOp()..requestTxn = toProto();
  }
}

class TxnResponse implements EtcdResponse, ResponseOp {
  TxnResponse.fromProto(this.proto);
  final pb.TxnResponse proto;
  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
  late final bool success = proto.succeeded;
  late final List<ResponseOp> responses = proto.responses
      .map((op) => ResponseOp.fromProto(op))
      .toList(growable: false);
}

class CompactionRequest {
  CompactionRequest({
    required this.revision,
    this.physical = false,
  });

  final int revision;
  final bool physical;

  pb.CompactionRequest toProto() {
    return pb.CompactionRequest()
      ..revision = Int64(revision)
      ..physical = physical;
  }
}

class CompactionResponse implements EtcdResponse {
  CompactionResponse.fromProto(this.proto);
  final pb.CompactionResponse proto;
  @override
  late final ResponseHeader header = ResponseHeader.fromProto(proto.header);
}

class KVClient {
  KVClient.fromChannel(this.inner);

  final pb.KVClient inner;

  Future<RangeResponse> range(RangeRequest req) async {
    return RangeResponse.fromProto(await inner.range(req.toProto()));
  }

  Future<PutResponse> put(PutRequest req) async {
    return PutResponse.fromProto(await inner.put(req.toProto()));
  }

  Future<DeleteRangeResponse> deleteRange(DeleteRangeRequest req) async {
    return DeleteRangeResponse.fromProto(
        await inner.deleteRange(req.toProto()));
  }

  Future<TxnResponse> txn(TxnRequest req) async {
    return TxnResponse.fromProto(await inner.txn(req.toProto()));
  }

  Future<CompactionResponse> compact(CompactionRequest req) async {
    return CompactionResponse.fromProto(await inner.compact(req.toProto()));
  }

  /// Puts a simple key-value pair.
  Future<PutResponse> setValue(
    String key,
    String value, {
    int? lease,
    bool? prevKV,
    bool? ignoreValue,
    bool? ignoreLease,
  }) {
    return put(PutRequest(
      key: key,
      value: value,
      lease: lease,
      prevKV: prevKV,
      ignoreValue: ignoreValue,
      ignoreLease: ignoreLease,
    ));
  }

  /// Puts a simple key-value pair.
  Future<PutResponse> setBytes(
    String key,
    List<int> value, {
    int? lease,
    bool? prevKV,
    bool? ignoreValue,
    bool? ignoreLease,
  }) {
    return put(PutRequest.fromBytes(
      keyBytes: utf8.encode(key),
      valueBytes: value,
      lease: lease,
      prevKV: prevKV,
      ignoreValue: ignoreValue,
      ignoreLease: ignoreLease,
    ));
  }

  /// Performs a compare-and-swap operation.
  ///
  /// If the current value of the key is [oldValue], then the value is set to
  /// [newValue].
  ///
  /// Returns a [TxnResponse] with [TxnResponse.success] set to true if the
  /// operation succeeded, otherwise false.
  Future<TxnResponse> compareAndSwap(
    String key, {
    required String oldValue,
    required String newValue,
  }) {
    return txn(TxnRequest(
      compare: [
        Compare.value(
          key: key,
          operator: CompareOperator.equal,
          value: oldValue,
        ),
      ],
      success: [
        PutRequest(
          key: key,
          value: newValue,
        ),
      ],
    ));
  }

  /// Atomically puts a key if it does not already exist.
  ///
  /// Returns a [TxnResponse] with [TxnResponse.success] set to true if the
  /// operation succeeded, otherwise false if the value already existed at the
  /// time the transaction was processed.
  Future<TxnRequest> setIfNotExists(
    String key, {
    required String value,
    int? lease,
  }) async {
    return TxnRequest(
      compare: [
        Compare.version(
          key: key,
          operator: CompareOperator.equal,
          version: 0,
        ),
      ],
      success: [
        PutRequest(
          key: key,
          value: value,
          lease: lease,
        ),
      ],
    );
  }

  /// Atomically puts a key if it does not already exist.
  ///
  /// Returns a [TxnResponse] with [TxnResponse.success] set to true if the
  /// operation succeeded, otherwise false if the value already existed at the
  /// time the transaction was processed.
  Future<TxnRequest> setBytesIfNotExists(
    String key, {
    required List<int> value,
    int? lease,
  }) async {
    return TxnRequest(
      compare: [
        Compare.version(
          key: key,
          operator: CompareOperator.equal,
          version: 0,
        ),
      ],
      success: [
        PutRequest.fromBytes(
          keyBytes: utf8.encode(key),
          valueBytes: value,
          lease: lease,
        ),
      ],
    );
  }

  /// Returns whether or not a key exists.
  Future<bool> exists(
    String key, {
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: key,
      limit: 1,
      serializable: serializable,
      countOnly: true,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.count > 0;
  }

  /// Returns the entry for a key if it exists, otherwise returns null.
  Future<EtcdEntry?> getEntry(
    String key, {
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: key,
      serializable: serializable,
      limit: 1,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.isEmpty ? null : result.kvs.single;
  }

  /// Returns entries starting at [key] until [before], excluding [before] if it
  /// exists.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<List<EtcdEntry>> getEntriesStartingAt(
    String key, {
    String? before,
    int? limit,
    SortOrder sortOrder = SortOrder.none,
    SortTarget sortTarget = SortTarget.key,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: key,
      rangeEnd: before,
      limit: limit,
      sortOrder: sortOrder,
      sortTarget: sortTarget,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs;
  }

  /// Returns the first entry starting at [key] until [before], excluding [before]
  /// if it exists.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<EtcdEntry?> getEntryStartingAt(
    String key, {
    String? before,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: key,
      rangeEnd: before,
      limit: 1,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.isEmpty ? null : result.kvs.single;
  }

  /// Returns entries starting after [key] until [before], excluding [key] and
  /// [before] if they exist.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<List<EtcdEntry>> getEntriesAfter(
    String key, {
    String? before,
    int? limit,
    SortOrder sortOrder = SortOrder.none,
    SortTarget sortTarget = SortTarget.key,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: keyAfter(key),
      rangeEnd: before,
      limit: limit,
      sortOrder: sortOrder,
      sortTarget: sortTarget,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs;
  }

  /// Returns entries prefixed with [key].
  Future<List<EtcdEntry>> getEntriesWithPrefix(
    String prefix, {
    int? limit,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: prefix,
      rangeEnd: keySibling(prefix),
      limit: limit,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs;
  }

  /// Returns keys starting at [key] until [before], excluding [before] if it
  /// exists.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<List<String>> getKeysStartingAt(
    String key, {
    String? before,
    int? limit,
    SortOrder sortOrder = SortOrder.none,
    SortTarget sortTarget = SortTarget.key,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: key,
      rangeEnd: before,
      limit: limit,
      sortOrder: sortOrder,
      sortTarget: sortTarget,
      serializable: serializable,
      keysOnly: true,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.map((kv) => kv.key).toList(growable: false);
  }

  /// Returns the first key starting at [key] until [before], excluding [before]
  /// if it exists.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<String?> getKeyStartingAt(
    String key, {
    String? before,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: key,
      rangeEnd: before,
      limit: 1,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.isEmpty ? null : result.kvs.single.key;
  }

  /// Returns the keys starting after [key] until [before], excluding [key] and
  /// [before] if they exist.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<List<String>> getKeysAfter(
    String key, {
    String? before,
    int? limit,
    SortOrder sortOrder = SortOrder.none,
    SortTarget sortTarget = SortTarget.key,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: keyAfter(key),
      rangeEnd: before,
      limit: limit,
      sortOrder: sortOrder,
      sortTarget: sortTarget,
      serializable: serializable,
      keysOnly: true,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.map((kv) => kv.key).toList(growable: false);
  }

  /// Returns the first key starting after [key] until [before], excluding [key]
  /// and [before] if they exist.
  ///
  /// If [before] is null, then the range is unbounded.
  Future<String?> getKeyAfter(
    String key, {
    String? before,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: keyAfter(key),
      rangeEnd: before,
      limit: 1,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.isEmpty ? null : result.kvs.single.key;
  }

  /// Returns keys prefixed with [prefix].
  Future<List<String>> getKeysWithPrefix(
    String prefix, {
    int? limit,
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final result = await range(RangeRequest(
      key: prefix,
      rangeEnd: keySibling(prefix),
      limit: limit,
      serializable: serializable,
      keysOnly: true,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    ));
    return result.kvs.map((kv) => kv.key).toList(growable: false);
  }

  /// Gets the value for a key if it exists, otherwise returns null.
  Future<String?> getValue(
    String key, {
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final entry = await getEntry(
      key,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    );
    return entry?.value;
  }

  /// Gets the value for a key if it exists, otherwise returns null.
  Future<List<int>?> getValueBytes(
    String key, {
    bool serializable = true,
    int? minModify,
    int? maxModify,
    int? minCreate,
    int? maxCreate,
  }) async {
    final entry = await getEntry(
      key,
      serializable: serializable,
      minModify: minModify,
      maxModify: maxModify,
      minCreate: minCreate,
      maxCreate: maxCreate,
    );
    return entry?.valueBytes;
  }
}

/// Returns the key for the next sibling, i.e. the first key not prefixed by the
/// provided key.
List<int> keySiblingBytes(List<int> bytes) {
  final result = Uint8List.fromList(bytes);
  for (var i = result.length - 1; i >= 0; i--) {
    if (result[i] < 255) {
      result[i]++;
      return result;
    }
    result[i] = 0;
  }
  return result;
}

/// Returns the key for the next sibling, i.e. the first key not prefixed by the
/// provided key.
String keySibling(String key) {
  return utf8.decode(keySiblingBytes(utf8.encode(key)));
}

/// Returns the first possible key to follow the provided key.
List<int> keyAfterBytes(List<int> bytes) {
  return Uint8List(bytes.length + 1)..setRange(0, bytes.length, bytes);
}

/// Returns the first possible key to follow the provided key.
String keyAfter(String key) {
  return utf8.decode(keyAfterBytes(utf8.encode(key)));
}
