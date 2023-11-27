//
//  Generated code. Do not modify.
//  source: etcd/api/etcdserverpb/rpc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc.pb.dart' as $0;

export 'rpc.pb.dart';

@$pb.GrpcServiceName('etcdserverpb.KV')
class KVClient extends $grpc.Client {
  static final _$range = $grpc.ClientMethod<$0.RangeRequest, $0.RangeResponse>(
      '/etcdserverpb.KV/Range',
      ($0.RangeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RangeResponse.fromBuffer(value));
  static final _$put = $grpc.ClientMethod<$0.PutRequest, $0.PutResponse>(
      '/etcdserverpb.KV/Put',
      ($0.PutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PutResponse.fromBuffer(value));
  static final _$deleteRange =
      $grpc.ClientMethod<$0.DeleteRangeRequest, $0.DeleteRangeResponse>(
          '/etcdserverpb.KV/DeleteRange',
          ($0.DeleteRangeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteRangeResponse.fromBuffer(value));
  static final _$txn = $grpc.ClientMethod<$0.TxnRequest, $0.TxnResponse>(
      '/etcdserverpb.KV/Txn',
      ($0.TxnRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TxnResponse.fromBuffer(value));
  static final _$compact =
      $grpc.ClientMethod<$0.CompactionRequest, $0.CompactionResponse>(
          '/etcdserverpb.KV/Compact',
          ($0.CompactionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CompactionResponse.fromBuffer(value));

  KVClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RangeResponse> range($0.RangeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$range, request, options: options);
  }

  $grpc.ResponseFuture<$0.PutResponse> put($0.PutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$put, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteRangeResponse> deleteRange(
      $0.DeleteRangeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRange, request, options: options);
  }

  $grpc.ResponseFuture<$0.TxnResponse> txn($0.TxnRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$txn, request, options: options);
  }

  $grpc.ResponseFuture<$0.CompactionResponse> compact(
      $0.CompactionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$compact, request, options: options);
  }
}

@$pb.GrpcServiceName('etcdserverpb.KV')
abstract class KVServiceBase extends $grpc.Service {
  $core.String get $name => 'etcdserverpb.KV';

  KVServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RangeRequest, $0.RangeResponse>(
        'Range',
        range_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RangeRequest.fromBuffer(value),
        ($0.RangeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PutRequest, $0.PutResponse>(
        'Put',
        put_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PutRequest.fromBuffer(value),
        ($0.PutResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteRangeRequest, $0.DeleteRangeResponse>(
            'DeleteRange',
            deleteRange_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteRangeRequest.fromBuffer(value),
            ($0.DeleteRangeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TxnRequest, $0.TxnResponse>(
        'Txn',
        txn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TxnRequest.fromBuffer(value),
        ($0.TxnResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CompactionRequest, $0.CompactionResponse>(
        'Compact',
        compact_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CompactionRequest.fromBuffer(value),
        ($0.CompactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RangeResponse> range_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RangeRequest> request) async {
    return range(call, await request);
  }

  $async.Future<$0.PutResponse> put_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PutRequest> request) async {
    return put(call, await request);
  }

  $async.Future<$0.DeleteRangeResponse> deleteRange_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteRangeRequest> request) async {
    return deleteRange(call, await request);
  }

  $async.Future<$0.TxnResponse> txn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TxnRequest> request) async {
    return txn(call, await request);
  }

  $async.Future<$0.CompactionResponse> compact_Pre($grpc.ServiceCall call,
      $async.Future<$0.CompactionRequest> request) async {
    return compact(call, await request);
  }

  $async.Future<$0.RangeResponse> range(
      $grpc.ServiceCall call, $0.RangeRequest request);
  $async.Future<$0.PutResponse> put(
      $grpc.ServiceCall call, $0.PutRequest request);
  $async.Future<$0.DeleteRangeResponse> deleteRange(
      $grpc.ServiceCall call, $0.DeleteRangeRequest request);
  $async.Future<$0.TxnResponse> txn(
      $grpc.ServiceCall call, $0.TxnRequest request);
  $async.Future<$0.CompactionResponse> compact(
      $grpc.ServiceCall call, $0.CompactionRequest request);
}

@$pb.GrpcServiceName('etcdserverpb.Watch')
class WatchClient extends $grpc.Client {
  static final _$watch = $grpc.ClientMethod<$0.WatchRequest, $0.WatchResponse>(
      '/etcdserverpb.Watch/Watch',
      ($0.WatchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WatchResponse.fromBuffer(value));

  WatchClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.WatchResponse> watch(
      $async.Stream<$0.WatchRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$watch, request, options: options);
  }
}

@$pb.GrpcServiceName('etcdserverpb.Watch')
abstract class WatchServiceBase extends $grpc.Service {
  $core.String get $name => 'etcdserverpb.Watch';

  WatchServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.WatchRequest, $0.WatchResponse>(
        'Watch',
        watch,
        true,
        true,
        ($core.List<$core.int> value) => $0.WatchRequest.fromBuffer(value),
        ($0.WatchResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.WatchResponse> watch(
      $grpc.ServiceCall call, $async.Stream<$0.WatchRequest> request);
}

@$pb.GrpcServiceName('etcdserverpb.Lease')
class LeaseClient extends $grpc.Client {
  static final _$leaseGrant =
      $grpc.ClientMethod<$0.LeaseGrantRequest, $0.LeaseGrantResponse>(
          '/etcdserverpb.Lease/LeaseGrant',
          ($0.LeaseGrantRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LeaseGrantResponse.fromBuffer(value));
  static final _$leaseRevoke =
      $grpc.ClientMethod<$0.LeaseRevokeRequest, $0.LeaseRevokeResponse>(
          '/etcdserverpb.Lease/LeaseRevoke',
          ($0.LeaseRevokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LeaseRevokeResponse.fromBuffer(value));
  static final _$leaseKeepAlive =
      $grpc.ClientMethod<$0.LeaseKeepAliveRequest, $0.LeaseKeepAliveResponse>(
          '/etcdserverpb.Lease/LeaseKeepAlive',
          ($0.LeaseKeepAliveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LeaseKeepAliveResponse.fromBuffer(value));
  static final _$leaseTimeToLive =
      $grpc.ClientMethod<$0.LeaseTimeToLiveRequest, $0.LeaseTimeToLiveResponse>(
          '/etcdserverpb.Lease/LeaseTimeToLive',
          ($0.LeaseTimeToLiveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LeaseTimeToLiveResponse.fromBuffer(value));
  static final _$leaseLeases =
      $grpc.ClientMethod<$0.LeaseLeasesRequest, $0.LeaseLeasesResponse>(
          '/etcdserverpb.Lease/LeaseLeases',
          ($0.LeaseLeasesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LeaseLeasesResponse.fromBuffer(value));

  LeaseClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LeaseGrantResponse> leaseGrant(
      $0.LeaseGrantRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaseGrant, request, options: options);
  }

  $grpc.ResponseFuture<$0.LeaseRevokeResponse> leaseRevoke(
      $0.LeaseRevokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaseRevoke, request, options: options);
  }

  $grpc.ResponseStream<$0.LeaseKeepAliveResponse> leaseKeepAlive(
      $async.Stream<$0.LeaseKeepAliveRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$leaseKeepAlive, request, options: options);
  }

  $grpc.ResponseFuture<$0.LeaseTimeToLiveResponse> leaseTimeToLive(
      $0.LeaseTimeToLiveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaseTimeToLive, request, options: options);
  }

  $grpc.ResponseFuture<$0.LeaseLeasesResponse> leaseLeases(
      $0.LeaseLeasesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaseLeases, request, options: options);
  }
}

@$pb.GrpcServiceName('etcdserverpb.Lease')
abstract class LeaseServiceBase extends $grpc.Service {
  $core.String get $name => 'etcdserverpb.Lease';

  LeaseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LeaseGrantRequest, $0.LeaseGrantResponse>(
        'LeaseGrant',
        leaseGrant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LeaseGrantRequest.fromBuffer(value),
        ($0.LeaseGrantResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LeaseRevokeRequest, $0.LeaseRevokeResponse>(
            'LeaseRevoke',
            leaseRevoke_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LeaseRevokeRequest.fromBuffer(value),
            ($0.LeaseRevokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LeaseKeepAliveRequest,
            $0.LeaseKeepAliveResponse>(
        'LeaseKeepAlive',
        leaseKeepAlive,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.LeaseKeepAliveRequest.fromBuffer(value),
        ($0.LeaseKeepAliveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LeaseTimeToLiveRequest,
            $0.LeaseTimeToLiveResponse>(
        'LeaseTimeToLive',
        leaseTimeToLive_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LeaseTimeToLiveRequest.fromBuffer(value),
        ($0.LeaseTimeToLiveResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LeaseLeasesRequest, $0.LeaseLeasesResponse>(
            'LeaseLeases',
            leaseLeases_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LeaseLeasesRequest.fromBuffer(value),
            ($0.LeaseLeasesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LeaseGrantResponse> leaseGrant_Pre($grpc.ServiceCall call,
      $async.Future<$0.LeaseGrantRequest> request) async {
    return leaseGrant(call, await request);
  }

  $async.Future<$0.LeaseRevokeResponse> leaseRevoke_Pre($grpc.ServiceCall call,
      $async.Future<$0.LeaseRevokeRequest> request) async {
    return leaseRevoke(call, await request);
  }

  $async.Future<$0.LeaseTimeToLiveResponse> leaseTimeToLive_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LeaseTimeToLiveRequest> request) async {
    return leaseTimeToLive(call, await request);
  }

  $async.Future<$0.LeaseLeasesResponse> leaseLeases_Pre($grpc.ServiceCall call,
      $async.Future<$0.LeaseLeasesRequest> request) async {
    return leaseLeases(call, await request);
  }

  $async.Future<$0.LeaseGrantResponse> leaseGrant(
      $grpc.ServiceCall call, $0.LeaseGrantRequest request);
  $async.Future<$0.LeaseRevokeResponse> leaseRevoke(
      $grpc.ServiceCall call, $0.LeaseRevokeRequest request);
  $async.Stream<$0.LeaseKeepAliveResponse> leaseKeepAlive(
      $grpc.ServiceCall call, $async.Stream<$0.LeaseKeepAliveRequest> request);
  $async.Future<$0.LeaseTimeToLiveResponse> leaseTimeToLive(
      $grpc.ServiceCall call, $0.LeaseTimeToLiveRequest request);
  $async.Future<$0.LeaseLeasesResponse> leaseLeases(
      $grpc.ServiceCall call, $0.LeaseLeasesRequest request);
}

@$pb.GrpcServiceName('etcdserverpb.Cluster')
class ClusterClient extends $grpc.Client {
  static final _$memberAdd =
      $grpc.ClientMethod<$0.MemberAddRequest, $0.MemberAddResponse>(
          '/etcdserverpb.Cluster/MemberAdd',
          ($0.MemberAddRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MemberAddResponse.fromBuffer(value));
  static final _$memberRemove =
      $grpc.ClientMethod<$0.MemberRemoveRequest, $0.MemberRemoveResponse>(
          '/etcdserverpb.Cluster/MemberRemove',
          ($0.MemberRemoveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MemberRemoveResponse.fromBuffer(value));
  static final _$memberUpdate =
      $grpc.ClientMethod<$0.MemberUpdateRequest, $0.MemberUpdateResponse>(
          '/etcdserverpb.Cluster/MemberUpdate',
          ($0.MemberUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MemberUpdateResponse.fromBuffer(value));
  static final _$memberList =
      $grpc.ClientMethod<$0.MemberListRequest, $0.MemberListResponse>(
          '/etcdserverpb.Cluster/MemberList',
          ($0.MemberListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MemberListResponse.fromBuffer(value));
  static final _$memberPromote =
      $grpc.ClientMethod<$0.MemberPromoteRequest, $0.MemberPromoteResponse>(
          '/etcdserverpb.Cluster/MemberPromote',
          ($0.MemberPromoteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MemberPromoteResponse.fromBuffer(value));

  ClusterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MemberAddResponse> memberAdd(
      $0.MemberAddRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberAdd, request, options: options);
  }

  $grpc.ResponseFuture<$0.MemberRemoveResponse> memberRemove(
      $0.MemberRemoveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberRemove, request, options: options);
  }

  $grpc.ResponseFuture<$0.MemberUpdateResponse> memberUpdate(
      $0.MemberUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.MemberListResponse> memberList(
      $0.MemberListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberList, request, options: options);
  }

  $grpc.ResponseFuture<$0.MemberPromoteResponse> memberPromote(
      $0.MemberPromoteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberPromote, request, options: options);
  }
}

@$pb.GrpcServiceName('etcdserverpb.Cluster')
abstract class ClusterServiceBase extends $grpc.Service {
  $core.String get $name => 'etcdserverpb.Cluster';

  ClusterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MemberAddRequest, $0.MemberAddResponse>(
        'MemberAdd',
        memberAdd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MemberAddRequest.fromBuffer(value),
        ($0.MemberAddResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.MemberRemoveRequest, $0.MemberRemoveResponse>(
            'MemberRemove',
            memberRemove_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.MemberRemoveRequest.fromBuffer(value),
            ($0.MemberRemoveResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.MemberUpdateRequest, $0.MemberUpdateResponse>(
            'MemberUpdate',
            memberUpdate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.MemberUpdateRequest.fromBuffer(value),
            ($0.MemberUpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MemberListRequest, $0.MemberListResponse>(
        'MemberList',
        memberList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MemberListRequest.fromBuffer(value),
        ($0.MemberListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.MemberPromoteRequest, $0.MemberPromoteResponse>(
            'MemberPromote',
            memberPromote_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.MemberPromoteRequest.fromBuffer(value),
            ($0.MemberPromoteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MemberAddResponse> memberAdd_Pre($grpc.ServiceCall call,
      $async.Future<$0.MemberAddRequest> request) async {
    return memberAdd(call, await request);
  }

  $async.Future<$0.MemberRemoveResponse> memberRemove_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MemberRemoveRequest> request) async {
    return memberRemove(call, await request);
  }

  $async.Future<$0.MemberUpdateResponse> memberUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MemberUpdateRequest> request) async {
    return memberUpdate(call, await request);
  }

  $async.Future<$0.MemberListResponse> memberList_Pre($grpc.ServiceCall call,
      $async.Future<$0.MemberListRequest> request) async {
    return memberList(call, await request);
  }

  $async.Future<$0.MemberPromoteResponse> memberPromote_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MemberPromoteRequest> request) async {
    return memberPromote(call, await request);
  }

  $async.Future<$0.MemberAddResponse> memberAdd(
      $grpc.ServiceCall call, $0.MemberAddRequest request);
  $async.Future<$0.MemberRemoveResponse> memberRemove(
      $grpc.ServiceCall call, $0.MemberRemoveRequest request);
  $async.Future<$0.MemberUpdateResponse> memberUpdate(
      $grpc.ServiceCall call, $0.MemberUpdateRequest request);
  $async.Future<$0.MemberListResponse> memberList(
      $grpc.ServiceCall call, $0.MemberListRequest request);
  $async.Future<$0.MemberPromoteResponse> memberPromote(
      $grpc.ServiceCall call, $0.MemberPromoteRequest request);
}

@$pb.GrpcServiceName('etcdserverpb.Maintenance')
class MaintenanceClient extends $grpc.Client {
  static final _$alarm = $grpc.ClientMethod<$0.AlarmRequest, $0.AlarmResponse>(
      '/etcdserverpb.Maintenance/Alarm',
      ($0.AlarmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AlarmResponse.fromBuffer(value));
  static final _$status =
      $grpc.ClientMethod<$0.StatusRequest, $0.StatusResponse>(
          '/etcdserverpb.Maintenance/Status',
          ($0.StatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StatusResponse.fromBuffer(value));
  static final _$defragment =
      $grpc.ClientMethod<$0.DefragmentRequest, $0.DefragmentResponse>(
          '/etcdserverpb.Maintenance/Defragment',
          ($0.DefragmentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DefragmentResponse.fromBuffer(value));
  static final _$hash = $grpc.ClientMethod<$0.HashRequest, $0.HashResponse>(
      '/etcdserverpb.Maintenance/Hash',
      ($0.HashRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HashResponse.fromBuffer(value));
  static final _$hashKV =
      $grpc.ClientMethod<$0.HashKVRequest, $0.HashKVResponse>(
          '/etcdserverpb.Maintenance/HashKV',
          ($0.HashKVRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HashKVResponse.fromBuffer(value));
  static final _$snapshot =
      $grpc.ClientMethod<$0.SnapshotRequest, $0.SnapshotResponse>(
          '/etcdserverpb.Maintenance/Snapshot',
          ($0.SnapshotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SnapshotResponse.fromBuffer(value));
  static final _$moveLeader =
      $grpc.ClientMethod<$0.MoveLeaderRequest, $0.MoveLeaderResponse>(
          '/etcdserverpb.Maintenance/MoveLeader',
          ($0.MoveLeaderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MoveLeaderResponse.fromBuffer(value));
  static final _$downgrade =
      $grpc.ClientMethod<$0.DowngradeRequest, $0.DowngradeResponse>(
          '/etcdserverpb.Maintenance/Downgrade',
          ($0.DowngradeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DowngradeResponse.fromBuffer(value));

  MaintenanceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AlarmResponse> alarm($0.AlarmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$alarm, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusResponse> status($0.StatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$status, request, options: options);
  }

  $grpc.ResponseFuture<$0.DefragmentResponse> defragment(
      $0.DefragmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$defragment, request, options: options);
  }

  $grpc.ResponseFuture<$0.HashResponse> hash($0.HashRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$hash, request, options: options);
  }

  $grpc.ResponseFuture<$0.HashKVResponse> hashKV($0.HashKVRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$hashKV, request, options: options);
  }

  $grpc.ResponseStream<$0.SnapshotResponse> snapshot($0.SnapshotRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$snapshot, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.MoveLeaderResponse> moveLeader(
      $0.MoveLeaderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moveLeader, request, options: options);
  }

  $grpc.ResponseFuture<$0.DowngradeResponse> downgrade(
      $0.DowngradeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downgrade, request, options: options);
  }
}

@$pb.GrpcServiceName('etcdserverpb.Maintenance')
abstract class MaintenanceServiceBase extends $grpc.Service {
  $core.String get $name => 'etcdserverpb.Maintenance';

  MaintenanceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AlarmRequest, $0.AlarmResponse>(
        'Alarm',
        alarm_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AlarmRequest.fromBuffer(value),
        ($0.AlarmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatusRequest, $0.StatusResponse>(
        'Status',
        status_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StatusRequest.fromBuffer(value),
        ($0.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DefragmentRequest, $0.DefragmentResponse>(
        'Defragment',
        defragment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DefragmentRequest.fromBuffer(value),
        ($0.DefragmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HashRequest, $0.HashResponse>(
        'Hash',
        hash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HashRequest.fromBuffer(value),
        ($0.HashResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HashKVRequest, $0.HashKVResponse>(
        'HashKV',
        hashKV_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HashKVRequest.fromBuffer(value),
        ($0.HashKVResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SnapshotRequest, $0.SnapshotResponse>(
        'Snapshot',
        snapshot_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SnapshotRequest.fromBuffer(value),
        ($0.SnapshotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MoveLeaderRequest, $0.MoveLeaderResponse>(
        'MoveLeader',
        moveLeader_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MoveLeaderRequest.fromBuffer(value),
        ($0.MoveLeaderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DowngradeRequest, $0.DowngradeResponse>(
        'Downgrade',
        downgrade_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DowngradeRequest.fromBuffer(value),
        ($0.DowngradeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AlarmResponse> alarm_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AlarmRequest> request) async {
    return alarm(call, await request);
  }

  $async.Future<$0.StatusResponse> status_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StatusRequest> request) async {
    return status(call, await request);
  }

  $async.Future<$0.DefragmentResponse> defragment_Pre($grpc.ServiceCall call,
      $async.Future<$0.DefragmentRequest> request) async {
    return defragment(call, await request);
  }

  $async.Future<$0.HashResponse> hash_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HashRequest> request) async {
    return hash(call, await request);
  }

  $async.Future<$0.HashKVResponse> hashKV_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HashKVRequest> request) async {
    return hashKV(call, await request);
  }

  $async.Stream<$0.SnapshotResponse> snapshot_Pre($grpc.ServiceCall call,
      $async.Future<$0.SnapshotRequest> request) async* {
    yield* snapshot(call, await request);
  }

  $async.Future<$0.MoveLeaderResponse> moveLeader_Pre($grpc.ServiceCall call,
      $async.Future<$0.MoveLeaderRequest> request) async {
    return moveLeader(call, await request);
  }

  $async.Future<$0.DowngradeResponse> downgrade_Pre($grpc.ServiceCall call,
      $async.Future<$0.DowngradeRequest> request) async {
    return downgrade(call, await request);
  }

  $async.Future<$0.AlarmResponse> alarm(
      $grpc.ServiceCall call, $0.AlarmRequest request);
  $async.Future<$0.StatusResponse> status(
      $grpc.ServiceCall call, $0.StatusRequest request);
  $async.Future<$0.DefragmentResponse> defragment(
      $grpc.ServiceCall call, $0.DefragmentRequest request);
  $async.Future<$0.HashResponse> hash(
      $grpc.ServiceCall call, $0.HashRequest request);
  $async.Future<$0.HashKVResponse> hashKV(
      $grpc.ServiceCall call, $0.HashKVRequest request);
  $async.Stream<$0.SnapshotResponse> snapshot(
      $grpc.ServiceCall call, $0.SnapshotRequest request);
  $async.Future<$0.MoveLeaderResponse> moveLeader(
      $grpc.ServiceCall call, $0.MoveLeaderRequest request);
  $async.Future<$0.DowngradeResponse> downgrade(
      $grpc.ServiceCall call, $0.DowngradeRequest request);
}

@$pb.GrpcServiceName('etcdserverpb.Auth')
class AuthClient extends $grpc.Client {
  static final _$authEnable =
      $grpc.ClientMethod<$0.AuthEnableRequest, $0.AuthEnableResponse>(
          '/etcdserverpb.Auth/AuthEnable',
          ($0.AuthEnableRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthEnableResponse.fromBuffer(value));
  static final _$authDisable =
      $grpc.ClientMethod<$0.AuthDisableRequest, $0.AuthDisableResponse>(
          '/etcdserverpb.Auth/AuthDisable',
          ($0.AuthDisableRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthDisableResponse.fromBuffer(value));
  static final _$authStatus =
      $grpc.ClientMethod<$0.AuthStatusRequest, $0.AuthStatusResponse>(
          '/etcdserverpb.Auth/AuthStatus',
          ($0.AuthStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthStatusResponse.fromBuffer(value));
  static final _$authenticate =
      $grpc.ClientMethod<$0.AuthenticateRequest, $0.AuthenticateResponse>(
          '/etcdserverpb.Auth/Authenticate',
          ($0.AuthenticateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticateResponse.fromBuffer(value));
  static final _$userAdd =
      $grpc.ClientMethod<$0.AuthUserAddRequest, $0.AuthUserAddResponse>(
          '/etcdserverpb.Auth/UserAdd',
          ($0.AuthUserAddRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthUserAddResponse.fromBuffer(value));
  static final _$userGet =
      $grpc.ClientMethod<$0.AuthUserGetRequest, $0.AuthUserGetResponse>(
          '/etcdserverpb.Auth/UserGet',
          ($0.AuthUserGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthUserGetResponse.fromBuffer(value));
  static final _$userList =
      $grpc.ClientMethod<$0.AuthUserListRequest, $0.AuthUserListResponse>(
          '/etcdserverpb.Auth/UserList',
          ($0.AuthUserListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthUserListResponse.fromBuffer(value));
  static final _$userDelete =
      $grpc.ClientMethod<$0.AuthUserDeleteRequest, $0.AuthUserDeleteResponse>(
          '/etcdserverpb.Auth/UserDelete',
          ($0.AuthUserDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthUserDeleteResponse.fromBuffer(value));
  static final _$userChangePassword = $grpc.ClientMethod<
          $0.AuthUserChangePasswordRequest, $0.AuthUserChangePasswordResponse>(
      '/etcdserverpb.Auth/UserChangePassword',
      ($0.AuthUserChangePasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthUserChangePasswordResponse.fromBuffer(value));
  static final _$userGrantRole = $grpc.ClientMethod<$0.AuthUserGrantRoleRequest,
          $0.AuthUserGrantRoleResponse>(
      '/etcdserverpb.Auth/UserGrantRole',
      ($0.AuthUserGrantRoleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthUserGrantRoleResponse.fromBuffer(value));
  static final _$userRevokeRole = $grpc.ClientMethod<
          $0.AuthUserRevokeRoleRequest, $0.AuthUserRevokeRoleResponse>(
      '/etcdserverpb.Auth/UserRevokeRole',
      ($0.AuthUserRevokeRoleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthUserRevokeRoleResponse.fromBuffer(value));
  static final _$roleAdd =
      $grpc.ClientMethod<$0.AuthRoleAddRequest, $0.AuthRoleAddResponse>(
          '/etcdserverpb.Auth/RoleAdd',
          ($0.AuthRoleAddRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthRoleAddResponse.fromBuffer(value));
  static final _$roleGet =
      $grpc.ClientMethod<$0.AuthRoleGetRequest, $0.AuthRoleGetResponse>(
          '/etcdserverpb.Auth/RoleGet',
          ($0.AuthRoleGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthRoleGetResponse.fromBuffer(value));
  static final _$roleList =
      $grpc.ClientMethod<$0.AuthRoleListRequest, $0.AuthRoleListResponse>(
          '/etcdserverpb.Auth/RoleList',
          ($0.AuthRoleListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthRoleListResponse.fromBuffer(value));
  static final _$roleDelete =
      $grpc.ClientMethod<$0.AuthRoleDeleteRequest, $0.AuthRoleDeleteResponse>(
          '/etcdserverpb.Auth/RoleDelete',
          ($0.AuthRoleDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthRoleDeleteResponse.fromBuffer(value));
  static final _$roleGrantPermission = $grpc.ClientMethod<
          $0.AuthRoleGrantPermissionRequest,
          $0.AuthRoleGrantPermissionResponse>(
      '/etcdserverpb.Auth/RoleGrantPermission',
      ($0.AuthRoleGrantPermissionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthRoleGrantPermissionResponse.fromBuffer(value));
  static final _$roleRevokePermission = $grpc.ClientMethod<
          $0.AuthRoleRevokePermissionRequest,
          $0.AuthRoleRevokePermissionResponse>(
      '/etcdserverpb.Auth/RoleRevokePermission',
      ($0.AuthRoleRevokePermissionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthRoleRevokePermissionResponse.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthEnableResponse> authEnable(
      $0.AuthEnableRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authEnable, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthDisableResponse> authDisable(
      $0.AuthDisableRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authDisable, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthStatusResponse> authStatus(
      $0.AuthStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthenticateResponse> authenticate(
      $0.AuthenticateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserAddResponse> userAdd(
      $0.AuthUserAddRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userAdd, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserGetResponse> userGet(
      $0.AuthUserGetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userGet, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserListResponse> userList(
      $0.AuthUserListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserDeleteResponse> userDelete(
      $0.AuthUserDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userDelete, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserChangePasswordResponse> userChangePassword(
      $0.AuthUserChangePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userChangePassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserGrantRoleResponse> userGrantRole(
      $0.AuthUserGrantRoleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userGrantRole, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthUserRevokeRoleResponse> userRevokeRole(
      $0.AuthUserRevokeRoleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userRevokeRole, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthRoleAddResponse> roleAdd(
      $0.AuthRoleAddRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$roleAdd, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthRoleGetResponse> roleGet(
      $0.AuthRoleGetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$roleGet, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthRoleListResponse> roleList(
      $0.AuthRoleListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$roleList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthRoleDeleteResponse> roleDelete(
      $0.AuthRoleDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$roleDelete, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthRoleGrantPermissionResponse> roleGrantPermission(
      $0.AuthRoleGrantPermissionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$roleGrantPermission, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthRoleRevokePermissionResponse>
      roleRevokePermission($0.AuthRoleRevokePermissionRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$roleRevokePermission, request, options: options);
  }
}

@$pb.GrpcServiceName('etcdserverpb.Auth')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'etcdserverpb.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthEnableRequest, $0.AuthEnableResponse>(
        'AuthEnable',
        authEnable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthEnableRequest.fromBuffer(value),
        ($0.AuthEnableResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthDisableRequest, $0.AuthDisableResponse>(
            'AuthDisable',
            authDisable_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthDisableRequest.fromBuffer(value),
            ($0.AuthDisableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthStatusRequest, $0.AuthStatusResponse>(
        'AuthStatus',
        authStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthStatusRequest.fromBuffer(value),
        ($0.AuthStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthenticateRequest, $0.AuthenticateResponse>(
            'Authenticate',
            authenticate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthenticateRequest.fromBuffer(value),
            ($0.AuthenticateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthUserAddRequest, $0.AuthUserAddResponse>(
            'UserAdd',
            userAdd_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthUserAddRequest.fromBuffer(value),
            ($0.AuthUserAddResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthUserGetRequest, $0.AuthUserGetResponse>(
            'UserGet',
            userGet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthUserGetRequest.fromBuffer(value),
            ($0.AuthUserGetResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthUserListRequest, $0.AuthUserListResponse>(
            'UserList',
            userList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthUserListRequest.fromBuffer(value),
            ($0.AuthUserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthUserDeleteRequest,
            $0.AuthUserDeleteResponse>(
        'UserDelete',
        userDelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthUserDeleteRequest.fromBuffer(value),
        ($0.AuthUserDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthUserChangePasswordRequest,
            $0.AuthUserChangePasswordResponse>(
        'UserChangePassword',
        userChangePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthUserChangePasswordRequest.fromBuffer(value),
        ($0.AuthUserChangePasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthUserGrantRoleRequest,
            $0.AuthUserGrantRoleResponse>(
        'UserGrantRole',
        userGrantRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthUserGrantRoleRequest.fromBuffer(value),
        ($0.AuthUserGrantRoleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthUserRevokeRoleRequest,
            $0.AuthUserRevokeRoleResponse>(
        'UserRevokeRole',
        userRevokeRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthUserRevokeRoleRequest.fromBuffer(value),
        ($0.AuthUserRevokeRoleResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthRoleAddRequest, $0.AuthRoleAddResponse>(
            'RoleAdd',
            roleAdd_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthRoleAddRequest.fromBuffer(value),
            ($0.AuthRoleAddResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthRoleGetRequest, $0.AuthRoleGetResponse>(
            'RoleGet',
            roleGet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthRoleGetRequest.fromBuffer(value),
            ($0.AuthRoleGetResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthRoleListRequest, $0.AuthRoleListResponse>(
            'RoleList',
            roleList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthRoleListRequest.fromBuffer(value),
            ($0.AuthRoleListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRoleDeleteRequest,
            $0.AuthRoleDeleteResponse>(
        'RoleDelete',
        roleDelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthRoleDeleteRequest.fromBuffer(value),
        ($0.AuthRoleDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRoleGrantPermissionRequest,
            $0.AuthRoleGrantPermissionResponse>(
        'RoleGrantPermission',
        roleGrantPermission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthRoleGrantPermissionRequest.fromBuffer(value),
        ($0.AuthRoleGrantPermissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRoleRevokePermissionRequest,
            $0.AuthRoleRevokePermissionResponse>(
        'RoleRevokePermission',
        roleRevokePermission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthRoleRevokePermissionRequest.fromBuffer(value),
        ($0.AuthRoleRevokePermissionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthEnableResponse> authEnable_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthEnableRequest> request) async {
    return authEnable(call, await request);
  }

  $async.Future<$0.AuthDisableResponse> authDisable_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthDisableRequest> request) async {
    return authDisable(call, await request);
  }

  $async.Future<$0.AuthStatusResponse> authStatus_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthStatusRequest> request) async {
    return authStatus(call, await request);
  }

  $async.Future<$0.AuthenticateResponse> authenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticateRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.AuthUserAddResponse> userAdd_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthUserAddRequest> request) async {
    return userAdd(call, await request);
  }

  $async.Future<$0.AuthUserGetResponse> userGet_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthUserGetRequest> request) async {
    return userGet(call, await request);
  }

  $async.Future<$0.AuthUserListResponse> userList_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthUserListRequest> request) async {
    return userList(call, await request);
  }

  $async.Future<$0.AuthUserDeleteResponse> userDelete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthUserDeleteRequest> request) async {
    return userDelete(call, await request);
  }

  $async.Future<$0.AuthUserChangePasswordResponse> userChangePassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthUserChangePasswordRequest> request) async {
    return userChangePassword(call, await request);
  }

  $async.Future<$0.AuthUserGrantRoleResponse> userGrantRole_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthUserGrantRoleRequest> request) async {
    return userGrantRole(call, await request);
  }

  $async.Future<$0.AuthUserRevokeRoleResponse> userRevokeRole_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthUserRevokeRoleRequest> request) async {
    return userRevokeRole(call, await request);
  }

  $async.Future<$0.AuthRoleAddResponse> roleAdd_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthRoleAddRequest> request) async {
    return roleAdd(call, await request);
  }

  $async.Future<$0.AuthRoleGetResponse> roleGet_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthRoleGetRequest> request) async {
    return roleGet(call, await request);
  }

  $async.Future<$0.AuthRoleListResponse> roleList_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthRoleListRequest> request) async {
    return roleList(call, await request);
  }

  $async.Future<$0.AuthRoleDeleteResponse> roleDelete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthRoleDeleteRequest> request) async {
    return roleDelete(call, await request);
  }

  $async.Future<$0.AuthRoleGrantPermissionResponse> roleGrantPermission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthRoleGrantPermissionRequest> request) async {
    return roleGrantPermission(call, await request);
  }

  $async.Future<$0.AuthRoleRevokePermissionResponse> roleRevokePermission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthRoleRevokePermissionRequest> request) async {
    return roleRevokePermission(call, await request);
  }

  $async.Future<$0.AuthEnableResponse> authEnable(
      $grpc.ServiceCall call, $0.AuthEnableRequest request);
  $async.Future<$0.AuthDisableResponse> authDisable(
      $grpc.ServiceCall call, $0.AuthDisableRequest request);
  $async.Future<$0.AuthStatusResponse> authStatus(
      $grpc.ServiceCall call, $0.AuthStatusRequest request);
  $async.Future<$0.AuthenticateResponse> authenticate(
      $grpc.ServiceCall call, $0.AuthenticateRequest request);
  $async.Future<$0.AuthUserAddResponse> userAdd(
      $grpc.ServiceCall call, $0.AuthUserAddRequest request);
  $async.Future<$0.AuthUserGetResponse> userGet(
      $grpc.ServiceCall call, $0.AuthUserGetRequest request);
  $async.Future<$0.AuthUserListResponse> userList(
      $grpc.ServiceCall call, $0.AuthUserListRequest request);
  $async.Future<$0.AuthUserDeleteResponse> userDelete(
      $grpc.ServiceCall call, $0.AuthUserDeleteRequest request);
  $async.Future<$0.AuthUserChangePasswordResponse> userChangePassword(
      $grpc.ServiceCall call, $0.AuthUserChangePasswordRequest request);
  $async.Future<$0.AuthUserGrantRoleResponse> userGrantRole(
      $grpc.ServiceCall call, $0.AuthUserGrantRoleRequest request);
  $async.Future<$0.AuthUserRevokeRoleResponse> userRevokeRole(
      $grpc.ServiceCall call, $0.AuthUserRevokeRoleRequest request);
  $async.Future<$0.AuthRoleAddResponse> roleAdd(
      $grpc.ServiceCall call, $0.AuthRoleAddRequest request);
  $async.Future<$0.AuthRoleGetResponse> roleGet(
      $grpc.ServiceCall call, $0.AuthRoleGetRequest request);
  $async.Future<$0.AuthRoleListResponse> roleList(
      $grpc.ServiceCall call, $0.AuthRoleListRequest request);
  $async.Future<$0.AuthRoleDeleteResponse> roleDelete(
      $grpc.ServiceCall call, $0.AuthRoleDeleteRequest request);
  $async.Future<$0.AuthRoleGrantPermissionResponse> roleGrantPermission(
      $grpc.ServiceCall call, $0.AuthRoleGrantPermissionRequest request);
  $async.Future<$0.AuthRoleRevokePermissionResponse> roleRevokePermission(
      $grpc.ServiceCall call, $0.AuthRoleRevokePermissionRequest request);
}
