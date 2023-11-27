//
//  Generated code. Do not modify.
//  source: etcd/api/etcdserverpb/rpc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../authpb/auth.pb.dart' as $2;
import '../mvccpb/kv.pb.dart' as $1;
import 'rpc.pbenum.dart';

export 'rpc.pbenum.dart';

class ResponseHeader extends $pb.GeneratedMessage {
  factory ResponseHeader({
    $fixnum.Int64? clusterId,
    $fixnum.Int64? memberId,
    $fixnum.Int64? revision,
    $fixnum.Int64? raftTerm,
  }) {
    final $result = create();
    if (clusterId != null) {
      $result.clusterId = clusterId;
    }
    if (memberId != null) {
      $result.memberId = memberId;
    }
    if (revision != null) {
      $result.revision = revision;
    }
    if (raftTerm != null) {
      $result.raftTerm = raftTerm;
    }
    return $result;
  }
  ResponseHeader._() : super();
  factory ResponseHeader.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResponseHeader.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResponseHeader',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'memberId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(3, _omitFieldNames ? '' : 'revision')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'raftTerm', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResponseHeader clone() => ResponseHeader()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResponseHeader copyWith(void Function(ResponseHeader) updates) =>
      super.copyWith((message) => updates(message as ResponseHeader))
          as ResponseHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponseHeader create() => ResponseHeader._();
  ResponseHeader createEmptyInstance() => create();
  static $pb.PbList<ResponseHeader> createRepeated() =>
      $pb.PbList<ResponseHeader>();
  @$core.pragma('dart2js:noInline')
  static ResponseHeader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResponseHeader>(create);
  static ResponseHeader? _defaultInstance;

  /// cluster_id is the ID of the cluster which sent the response.
  @$pb.TagNumber(1)
  $fixnum.Int64 get clusterId => $_getI64(0);
  @$pb.TagNumber(1)
  set clusterId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasClusterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClusterId() => clearField(1);

  /// member_id is the ID of the member which sent the response.
  @$pb.TagNumber(2)
  $fixnum.Int64 get memberId => $_getI64(1);
  @$pb.TagNumber(2)
  set memberId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMemberId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberId() => clearField(2);

  /// revision is the key-value store revision when the request was applied, and it's
  /// unset (so 0) in case of calls not interacting with key-value store.
  /// For watch progress responses, the header.revision indicates progress. All future events
  /// received in this stream are guaranteed to have a higher revision number than the
  /// header.revision number.
  @$pb.TagNumber(3)
  $fixnum.Int64 get revision => $_getI64(2);
  @$pb.TagNumber(3)
  set revision($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearRevision() => clearField(3);

  /// raft_term is the raft term when the request was applied.
  @$pb.TagNumber(4)
  $fixnum.Int64 get raftTerm => $_getI64(3);
  @$pb.TagNumber(4)
  set raftTerm($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRaftTerm() => $_has(3);
  @$pb.TagNumber(4)
  void clearRaftTerm() => clearField(4);
}

class RangeRequest extends $pb.GeneratedMessage {
  factory RangeRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
    $fixnum.Int64? limit,
    $fixnum.Int64? revision,
    RangeRequest_SortOrder? sortOrder,
    RangeRequest_SortTarget? sortTarget,
    $core.bool? serializable,
    $core.bool? keysOnly,
    $core.bool? countOnly,
    $fixnum.Int64? minModRevision,
    $fixnum.Int64? maxModRevision,
    $fixnum.Int64? minCreateRevision,
    $fixnum.Int64? maxCreateRevision,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (rangeEnd != null) {
      $result.rangeEnd = rangeEnd;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (revision != null) {
      $result.revision = revision;
    }
    if (sortOrder != null) {
      $result.sortOrder = sortOrder;
    }
    if (sortTarget != null) {
      $result.sortTarget = sortTarget;
    }
    if (serializable != null) {
      $result.serializable = serializable;
    }
    if (keysOnly != null) {
      $result.keysOnly = keysOnly;
    }
    if (countOnly != null) {
      $result.countOnly = countOnly;
    }
    if (minModRevision != null) {
      $result.minModRevision = minModRevision;
    }
    if (maxModRevision != null) {
      $result.maxModRevision = maxModRevision;
    }
    if (minCreateRevision != null) {
      $result.minCreateRevision = minCreateRevision;
    }
    if (maxCreateRevision != null) {
      $result.maxCreateRevision = maxCreateRevision;
    }
    return $result;
  }
  RangeRequest._() : super();
  factory RangeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RangeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RangeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..aInt64(3, _omitFieldNames ? '' : 'limit')
    ..aInt64(4, _omitFieldNames ? '' : 'revision')
    ..e<RangeRequest_SortOrder>(
        5, _omitFieldNames ? '' : 'sortOrder', $pb.PbFieldType.OE,
        defaultOrMaker: RangeRequest_SortOrder.NONE,
        valueOf: RangeRequest_SortOrder.valueOf,
        enumValues: RangeRequest_SortOrder.values)
    ..e<RangeRequest_SortTarget>(
        6, _omitFieldNames ? '' : 'sortTarget', $pb.PbFieldType.OE,
        defaultOrMaker: RangeRequest_SortTarget.KEY,
        valueOf: RangeRequest_SortTarget.valueOf,
        enumValues: RangeRequest_SortTarget.values)
    ..aOB(7, _omitFieldNames ? '' : 'serializable')
    ..aOB(8, _omitFieldNames ? '' : 'keysOnly')
    ..aOB(9, _omitFieldNames ? '' : 'countOnly')
    ..aInt64(10, _omitFieldNames ? '' : 'minModRevision')
    ..aInt64(11, _omitFieldNames ? '' : 'maxModRevision')
    ..aInt64(12, _omitFieldNames ? '' : 'minCreateRevision')
    ..aInt64(13, _omitFieldNames ? '' : 'maxCreateRevision')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RangeRequest clone() => RangeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RangeRequest copyWith(void Function(RangeRequest) updates) =>
      super.copyWith((message) => updates(message as RangeRequest))
          as RangeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RangeRequest create() => RangeRequest._();
  RangeRequest createEmptyInstance() => create();
  static $pb.PbList<RangeRequest> createRepeated() =>
      $pb.PbList<RangeRequest>();
  @$core.pragma('dart2js:noInline')
  static RangeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RangeRequest>(create);
  static RangeRequest? _defaultInstance;

  /// key is the first key for the range. If range_end is not given, the request only looks up key.
  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// range_end is the upper bound on the requested range [key, range_end).
  /// If range_end is '\0', the range is all keys >= key.
  /// If range_end is key plus one (e.g., "aa"+1 == "ab", "a\xff"+1 == "b"),
  /// then the range request gets all keys prefixed with key.
  /// If both key and range_end are '\0', then the range request returns all keys.
  @$pb.TagNumber(2)
  $core.List<$core.int> get rangeEnd => $_getN(1);
  @$pb.TagNumber(2)
  set rangeEnd($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRangeEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeEnd() => clearField(2);

  /// limit is a limit on the number of keys returned for the request. When limit is set to 0,
  /// it is treated as no limit.
  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);

  /// revision is the point-in-time of the key-value store to use for the range.
  /// If revision is less or equal to zero, the range is over the newest key-value store.
  /// If the revision has been compacted, ErrCompacted is returned as a response.
  @$pb.TagNumber(4)
  $fixnum.Int64 get revision => $_getI64(3);
  @$pb.TagNumber(4)
  set revision($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRevision() => $_has(3);
  @$pb.TagNumber(4)
  void clearRevision() => clearField(4);

  /// sort_order is the order for returned sorted results.
  @$pb.TagNumber(5)
  RangeRequest_SortOrder get sortOrder => $_getN(4);
  @$pb.TagNumber(5)
  set sortOrder(RangeRequest_SortOrder v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSortOrder() => $_has(4);
  @$pb.TagNumber(5)
  void clearSortOrder() => clearField(5);

  /// sort_target is the key-value field to use for sorting.
  @$pb.TagNumber(6)
  RangeRequest_SortTarget get sortTarget => $_getN(5);
  @$pb.TagNumber(6)
  set sortTarget(RangeRequest_SortTarget v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSortTarget() => $_has(5);
  @$pb.TagNumber(6)
  void clearSortTarget() => clearField(6);

  /// serializable sets the range request to use serializable member-local reads.
  /// Range requests are linearizable by default; linearizable requests have higher
  /// latency and lower throughput than serializable requests but reflect the current
  /// consensus of the cluster. For better performance, in exchange for possible stale reads,
  /// a serializable range request is served locally without needing to reach consensus
  /// with other nodes in the cluster.
  @$pb.TagNumber(7)
  $core.bool get serializable => $_getBF(6);
  @$pb.TagNumber(7)
  set serializable($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSerializable() => $_has(6);
  @$pb.TagNumber(7)
  void clearSerializable() => clearField(7);

  /// keys_only when set returns only the keys and not the values.
  @$pb.TagNumber(8)
  $core.bool get keysOnly => $_getBF(7);
  @$pb.TagNumber(8)
  set keysOnly($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasKeysOnly() => $_has(7);
  @$pb.TagNumber(8)
  void clearKeysOnly() => clearField(8);

  /// count_only when set returns only the count of the keys in the range.
  @$pb.TagNumber(9)
  $core.bool get countOnly => $_getBF(8);
  @$pb.TagNumber(9)
  set countOnly($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCountOnly() => $_has(8);
  @$pb.TagNumber(9)
  void clearCountOnly() => clearField(9);

  /// min_mod_revision is the lower bound for returned key mod revisions; all keys with
  /// lesser mod revisions will be filtered away.
  @$pb.TagNumber(10)
  $fixnum.Int64 get minModRevision => $_getI64(9);
  @$pb.TagNumber(10)
  set minModRevision($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasMinModRevision() => $_has(9);
  @$pb.TagNumber(10)
  void clearMinModRevision() => clearField(10);

  /// max_mod_revision is the upper bound for returned key mod revisions; all keys with
  /// greater mod revisions will be filtered away.
  @$pb.TagNumber(11)
  $fixnum.Int64 get maxModRevision => $_getI64(10);
  @$pb.TagNumber(11)
  set maxModRevision($fixnum.Int64 v) {
    $_setInt64(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasMaxModRevision() => $_has(10);
  @$pb.TagNumber(11)
  void clearMaxModRevision() => clearField(11);

  /// min_create_revision is the lower bound for returned key create revisions; all keys with
  /// lesser create revisions will be filtered away.
  @$pb.TagNumber(12)
  $fixnum.Int64 get minCreateRevision => $_getI64(11);
  @$pb.TagNumber(12)
  set minCreateRevision($fixnum.Int64 v) {
    $_setInt64(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasMinCreateRevision() => $_has(11);
  @$pb.TagNumber(12)
  void clearMinCreateRevision() => clearField(12);

  /// max_create_revision is the upper bound for returned key create revisions; all keys with
  /// greater create revisions will be filtered away.
  @$pb.TagNumber(13)
  $fixnum.Int64 get maxCreateRevision => $_getI64(12);
  @$pb.TagNumber(13)
  set maxCreateRevision($fixnum.Int64 v) {
    $_setInt64(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasMaxCreateRevision() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxCreateRevision() => clearField(13);
}

class RangeResponse extends $pb.GeneratedMessage {
  factory RangeResponse({
    ResponseHeader? header,
    $core.Iterable<$1.KeyValue>? kvs,
    $core.bool? more,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (kvs != null) {
      $result.kvs.addAll(kvs);
    }
    if (more != null) {
      $result.more = more;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  RangeResponse._() : super();
  factory RangeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RangeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RangeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<$1.KeyValue>(2, _omitFieldNames ? '' : 'kvs', $pb.PbFieldType.PM,
        subBuilder: $1.KeyValue.create)
    ..aOB(3, _omitFieldNames ? '' : 'more')
    ..aInt64(4, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RangeResponse clone() => RangeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RangeResponse copyWith(void Function(RangeResponse) updates) =>
      super.copyWith((message) => updates(message as RangeResponse))
          as RangeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RangeResponse create() => RangeResponse._();
  RangeResponse createEmptyInstance() => create();
  static $pb.PbList<RangeResponse> createRepeated() =>
      $pb.PbList<RangeResponse>();
  @$core.pragma('dart2js:noInline')
  static RangeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RangeResponse>(create);
  static RangeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// kvs is the list of key-value pairs matched by the range request.
  /// kvs is empty when count is requested.
  @$pb.TagNumber(2)
  $core.List<$1.KeyValue> get kvs => $_getList(1);

  /// more indicates if there are more keys to return in the requested range.
  @$pb.TagNumber(3)
  $core.bool get more => $_getBF(2);
  @$pb.TagNumber(3)
  set more($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearMore() => clearField(3);

  /// count is set to the number of keys within the range when requested.
  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);
}

class PutRequest extends $pb.GeneratedMessage {
  factory PutRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? value,
    $fixnum.Int64? lease,
    $core.bool? prevKv,
    $core.bool? ignoreValue,
    $core.bool? ignoreLease,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    if (lease != null) {
      $result.lease = lease;
    }
    if (prevKv != null) {
      $result.prevKv = prevKv;
    }
    if (ignoreValue != null) {
      $result.ignoreValue = ignoreValue;
    }
    if (ignoreLease != null) {
      $result.ignoreLease = ignoreLease;
    }
    return $result;
  }
  PutRequest._() : super();
  factory PutRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PutRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PutRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(3, _omitFieldNames ? '' : 'lease')
    ..aOB(4, _omitFieldNames ? '' : 'prevKv')
    ..aOB(5, _omitFieldNames ? '' : 'ignoreValue')
    ..aOB(6, _omitFieldNames ? '' : 'ignoreLease')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PutRequest clone() => PutRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PutRequest copyWith(void Function(PutRequest) updates) =>
      super.copyWith((message) => updates(message as PutRequest)) as PutRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutRequest create() => PutRequest._();
  PutRequest createEmptyInstance() => create();
  static $pb.PbList<PutRequest> createRepeated() => $pb.PbList<PutRequest>();
  @$core.pragma('dart2js:noInline')
  static PutRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutRequest>(create);
  static PutRequest? _defaultInstance;

  /// key is the key, in bytes, to put into the key-value store.
  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// value is the value, in bytes, to associate with the key in the key-value store.
  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  /// lease is the lease ID to associate with the key in the key-value store. A lease
  /// value of 0 indicates no lease.
  @$pb.TagNumber(3)
  $fixnum.Int64 get lease => $_getI64(2);
  @$pb.TagNumber(3)
  set lease($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLease() => $_has(2);
  @$pb.TagNumber(3)
  void clearLease() => clearField(3);

  /// If prev_kv is set, etcd gets the previous key-value pair before changing it.
  /// The previous key-value pair will be returned in the put response.
  @$pb.TagNumber(4)
  $core.bool get prevKv => $_getBF(3);
  @$pb.TagNumber(4)
  set prevKv($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPrevKv() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrevKv() => clearField(4);

  /// If ignore_value is set, etcd updates the key using its current value.
  /// Returns an error if the key does not exist.
  @$pb.TagNumber(5)
  $core.bool get ignoreValue => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreValue($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIgnoreValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreValue() => clearField(5);

  /// If ignore_lease is set, etcd updates the key using its current lease.
  /// Returns an error if the key does not exist.
  @$pb.TagNumber(6)
  $core.bool get ignoreLease => $_getBF(5);
  @$pb.TagNumber(6)
  set ignoreLease($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIgnoreLease() => $_has(5);
  @$pb.TagNumber(6)
  void clearIgnoreLease() => clearField(6);
}

class PutResponse extends $pb.GeneratedMessage {
  factory PutResponse({
    ResponseHeader? header,
    $1.KeyValue? prevKv,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (prevKv != null) {
      $result.prevKv = prevKv;
    }
    return $result;
  }
  PutResponse._() : super();
  factory PutResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PutResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PutResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOM<$1.KeyValue>(2, _omitFieldNames ? '' : 'prevKv',
        subBuilder: $1.KeyValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PutResponse clone() => PutResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PutResponse copyWith(void Function(PutResponse) updates) =>
      super.copyWith((message) => updates(message as PutResponse))
          as PutResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutResponse create() => PutResponse._();
  PutResponse createEmptyInstance() => create();
  static $pb.PbList<PutResponse> createRepeated() => $pb.PbList<PutResponse>();
  @$core.pragma('dart2js:noInline')
  static PutResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutResponse>(create);
  static PutResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// if prev_kv is set in the request, the previous key-value pair will be returned.
  @$pb.TagNumber(2)
  $1.KeyValue get prevKv => $_getN(1);
  @$pb.TagNumber(2)
  set prevKv($1.KeyValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPrevKv() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevKv() => clearField(2);
  @$pb.TagNumber(2)
  $1.KeyValue ensurePrevKv() => $_ensure(1);
}

class DeleteRangeRequest extends $pb.GeneratedMessage {
  factory DeleteRangeRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
    $core.bool? prevKv,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (rangeEnd != null) {
      $result.rangeEnd = rangeEnd;
    }
    if (prevKv != null) {
      $result.prevKv = prevKv;
    }
    return $result;
  }
  DeleteRangeRequest._() : super();
  factory DeleteRangeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteRangeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRangeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..aOB(3, _omitFieldNames ? '' : 'prevKv')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteRangeRequest clone() => DeleteRangeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteRangeRequest copyWith(void Function(DeleteRangeRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteRangeRequest))
          as DeleteRangeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRangeRequest create() => DeleteRangeRequest._();
  DeleteRangeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRangeRequest> createRepeated() =>
      $pb.PbList<DeleteRangeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRangeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRangeRequest>(create);
  static DeleteRangeRequest? _defaultInstance;

  /// key is the first key to delete in the range.
  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// range_end is the key following the last key to delete for the range [key, range_end).
  /// If range_end is not given, the range is defined to contain only the key argument.
  /// If range_end is one bit larger than the given key, then the range is all the keys
  /// with the prefix (the given key).
  /// If range_end is '\0', the range is all keys greater than or equal to the key argument.
  @$pb.TagNumber(2)
  $core.List<$core.int> get rangeEnd => $_getN(1);
  @$pb.TagNumber(2)
  set rangeEnd($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRangeEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeEnd() => clearField(2);

  /// If prev_kv is set, etcd gets the previous key-value pairs before deleting it.
  /// The previous key-value pairs will be returned in the delete response.
  @$pb.TagNumber(3)
  $core.bool get prevKv => $_getBF(2);
  @$pb.TagNumber(3)
  set prevKv($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPrevKv() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevKv() => clearField(3);
}

class DeleteRangeResponse extends $pb.GeneratedMessage {
  factory DeleteRangeResponse({
    ResponseHeader? header,
    $fixnum.Int64? deleted,
    $core.Iterable<$1.KeyValue>? prevKvs,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (deleted != null) {
      $result.deleted = deleted;
    }
    if (prevKvs != null) {
      $result.prevKvs.addAll(prevKvs);
    }
    return $result;
  }
  DeleteRangeResponse._() : super();
  factory DeleteRangeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteRangeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRangeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aInt64(2, _omitFieldNames ? '' : 'deleted')
    ..pc<$1.KeyValue>(3, _omitFieldNames ? '' : 'prevKvs', $pb.PbFieldType.PM,
        subBuilder: $1.KeyValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteRangeResponse clone() => DeleteRangeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteRangeResponse copyWith(void Function(DeleteRangeResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteRangeResponse))
          as DeleteRangeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRangeResponse create() => DeleteRangeResponse._();
  DeleteRangeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRangeResponse> createRepeated() =>
      $pb.PbList<DeleteRangeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRangeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRangeResponse>(create);
  static DeleteRangeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// deleted is the number of keys deleted by the delete range request.
  @$pb.TagNumber(2)
  $fixnum.Int64 get deleted => $_getI64(1);
  @$pb.TagNumber(2)
  set deleted($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDeleted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleted() => clearField(2);

  /// if prev_kv is set in the request, the previous key-value pairs will be returned.
  @$pb.TagNumber(3)
  $core.List<$1.KeyValue> get prevKvs => $_getList(2);
}

enum RequestOp_Request {
  requestRange,
  requestPut,
  requestDeleteRange,
  requestTxn,
  notSet
}

class RequestOp extends $pb.GeneratedMessage {
  factory RequestOp({
    RangeRequest? requestRange,
    PutRequest? requestPut,
    DeleteRangeRequest? requestDeleteRange,
    TxnRequest? requestTxn,
  }) {
    final $result = create();
    if (requestRange != null) {
      $result.requestRange = requestRange;
    }
    if (requestPut != null) {
      $result.requestPut = requestPut;
    }
    if (requestDeleteRange != null) {
      $result.requestDeleteRange = requestDeleteRange;
    }
    if (requestTxn != null) {
      $result.requestTxn = requestTxn;
    }
    return $result;
  }
  RequestOp._() : super();
  factory RequestOp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestOp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RequestOp_Request> _RequestOp_RequestByTag =
      {
    1: RequestOp_Request.requestRange,
    2: RequestOp_Request.requestPut,
    3: RequestOp_Request.requestDeleteRange,
    4: RequestOp_Request.requestTxn,
    0: RequestOp_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestOp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<RangeRequest>(1, _omitFieldNames ? '' : 'requestRange',
        subBuilder: RangeRequest.create)
    ..aOM<PutRequest>(2, _omitFieldNames ? '' : 'requestPut',
        subBuilder: PutRequest.create)
    ..aOM<DeleteRangeRequest>(3, _omitFieldNames ? '' : 'requestDeleteRange',
        subBuilder: DeleteRangeRequest.create)
    ..aOM<TxnRequest>(4, _omitFieldNames ? '' : 'requestTxn',
        subBuilder: TxnRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestOp clone() => RequestOp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestOp copyWith(void Function(RequestOp) updates) =>
      super.copyWith((message) => updates(message as RequestOp)) as RequestOp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestOp create() => RequestOp._();
  RequestOp createEmptyInstance() => create();
  static $pb.PbList<RequestOp> createRepeated() => $pb.PbList<RequestOp>();
  @$core.pragma('dart2js:noInline')
  static RequestOp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestOp>(create);
  static RequestOp? _defaultInstance;

  RequestOp_Request whichRequest() => _RequestOp_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RangeRequest get requestRange => $_getN(0);
  @$pb.TagNumber(1)
  set requestRange(RangeRequest v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRequestRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestRange() => clearField(1);
  @$pb.TagNumber(1)
  RangeRequest ensureRequestRange() => $_ensure(0);

  @$pb.TagNumber(2)
  PutRequest get requestPut => $_getN(1);
  @$pb.TagNumber(2)
  set requestPut(PutRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRequestPut() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestPut() => clearField(2);
  @$pb.TagNumber(2)
  PutRequest ensureRequestPut() => $_ensure(1);

  @$pb.TagNumber(3)
  DeleteRangeRequest get requestDeleteRange => $_getN(2);
  @$pb.TagNumber(3)
  set requestDeleteRange(DeleteRangeRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRequestDeleteRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestDeleteRange() => clearField(3);
  @$pb.TagNumber(3)
  DeleteRangeRequest ensureRequestDeleteRange() => $_ensure(2);

  @$pb.TagNumber(4)
  TxnRequest get requestTxn => $_getN(3);
  @$pb.TagNumber(4)
  set requestTxn(TxnRequest v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRequestTxn() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestTxn() => clearField(4);
  @$pb.TagNumber(4)
  TxnRequest ensureRequestTxn() => $_ensure(3);
}

enum ResponseOp_Response {
  responseRange,
  responsePut,
  responseDeleteRange,
  responseTxn,
  notSet
}

class ResponseOp extends $pb.GeneratedMessage {
  factory ResponseOp({
    RangeResponse? responseRange,
    PutResponse? responsePut,
    DeleteRangeResponse? responseDeleteRange,
    TxnResponse? responseTxn,
  }) {
    final $result = create();
    if (responseRange != null) {
      $result.responseRange = responseRange;
    }
    if (responsePut != null) {
      $result.responsePut = responsePut;
    }
    if (responseDeleteRange != null) {
      $result.responseDeleteRange = responseDeleteRange;
    }
    if (responseTxn != null) {
      $result.responseTxn = responseTxn;
    }
    return $result;
  }
  ResponseOp._() : super();
  factory ResponseOp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResponseOp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResponseOp_Response>
      _ResponseOp_ResponseByTag = {
    1: ResponseOp_Response.responseRange,
    2: ResponseOp_Response.responsePut,
    3: ResponseOp_Response.responseDeleteRange,
    4: ResponseOp_Response.responseTxn,
    0: ResponseOp_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResponseOp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<RangeResponse>(1, _omitFieldNames ? '' : 'responseRange',
        subBuilder: RangeResponse.create)
    ..aOM<PutResponse>(2, _omitFieldNames ? '' : 'responsePut',
        subBuilder: PutResponse.create)
    ..aOM<DeleteRangeResponse>(3, _omitFieldNames ? '' : 'responseDeleteRange',
        subBuilder: DeleteRangeResponse.create)
    ..aOM<TxnResponse>(4, _omitFieldNames ? '' : 'responseTxn',
        subBuilder: TxnResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResponseOp clone() => ResponseOp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResponseOp copyWith(void Function(ResponseOp) updates) =>
      super.copyWith((message) => updates(message as ResponseOp)) as ResponseOp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponseOp create() => ResponseOp._();
  ResponseOp createEmptyInstance() => create();
  static $pb.PbList<ResponseOp> createRepeated() => $pb.PbList<ResponseOp>();
  @$core.pragma('dart2js:noInline')
  static ResponseOp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResponseOp>(create);
  static ResponseOp? _defaultInstance;

  ResponseOp_Response whichResponse() =>
      _ResponseOp_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RangeResponse get responseRange => $_getN(0);
  @$pb.TagNumber(1)
  set responseRange(RangeResponse v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResponseRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponseRange() => clearField(1);
  @$pb.TagNumber(1)
  RangeResponse ensureResponseRange() => $_ensure(0);

  @$pb.TagNumber(2)
  PutResponse get responsePut => $_getN(1);
  @$pb.TagNumber(2)
  set responsePut(PutResponse v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResponsePut() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponsePut() => clearField(2);
  @$pb.TagNumber(2)
  PutResponse ensureResponsePut() => $_ensure(1);

  @$pb.TagNumber(3)
  DeleteRangeResponse get responseDeleteRange => $_getN(2);
  @$pb.TagNumber(3)
  set responseDeleteRange(DeleteRangeResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResponseDeleteRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseDeleteRange() => clearField(3);
  @$pb.TagNumber(3)
  DeleteRangeResponse ensureResponseDeleteRange() => $_ensure(2);

  @$pb.TagNumber(4)
  TxnResponse get responseTxn => $_getN(3);
  @$pb.TagNumber(4)
  set responseTxn(TxnResponse v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResponseTxn() => $_has(3);
  @$pb.TagNumber(4)
  void clearResponseTxn() => clearField(4);
  @$pb.TagNumber(4)
  TxnResponse ensureResponseTxn() => $_ensure(3);
}

enum Compare_TargetUnion {
  version,
  createRevision,
  modRevision,
  value,
  lease,
  notSet
}

class Compare extends $pb.GeneratedMessage {
  factory Compare({
    Compare_CompareResult? result,
    Compare_CompareTarget? target,
    $core.List<$core.int>? key,
    $fixnum.Int64? version,
    $fixnum.Int64? createRevision,
    $fixnum.Int64? modRevision,
    $core.List<$core.int>? value,
    $fixnum.Int64? lease,
    $core.List<$core.int>? rangeEnd,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (target != null) {
      $result.target = target;
    }
    if (key != null) {
      $result.key = key;
    }
    if (version != null) {
      $result.version = version;
    }
    if (createRevision != null) {
      $result.createRevision = createRevision;
    }
    if (modRevision != null) {
      $result.modRevision = modRevision;
    }
    if (value != null) {
      $result.value = value;
    }
    if (lease != null) {
      $result.lease = lease;
    }
    if (rangeEnd != null) {
      $result.rangeEnd = rangeEnd;
    }
    return $result;
  }
  Compare._() : super();
  factory Compare.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Compare.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Compare_TargetUnion>
      _Compare_TargetUnionByTag = {
    4: Compare_TargetUnion.version,
    5: Compare_TargetUnion.createRevision,
    6: Compare_TargetUnion.modRevision,
    7: Compare_TargetUnion.value,
    8: Compare_TargetUnion.lease,
    0: Compare_TargetUnion.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Compare',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8])
    ..e<Compare_CompareResult>(
        1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: Compare_CompareResult.EQUAL,
        valueOf: Compare_CompareResult.valueOf,
        enumValues: Compare_CompareResult.values)
    ..e<Compare_CompareTarget>(
        2, _omitFieldNames ? '' : 'target', $pb.PbFieldType.OE,
        defaultOrMaker: Compare_CompareTarget.VERSION,
        valueOf: Compare_CompareTarget.valueOf,
        enumValues: Compare_CompareTarget.values)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..aInt64(4, _omitFieldNames ? '' : 'version')
    ..aInt64(5, _omitFieldNames ? '' : 'createRevision')
    ..aInt64(6, _omitFieldNames ? '' : 'modRevision')
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(8, _omitFieldNames ? '' : 'lease')
    ..a<$core.List<$core.int>>(
        64, _omitFieldNames ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Compare clone() => Compare()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Compare copyWith(void Function(Compare) updates) =>
      super.copyWith((message) => updates(message as Compare)) as Compare;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Compare create() => Compare._();
  Compare createEmptyInstance() => create();
  static $pb.PbList<Compare> createRepeated() => $pb.PbList<Compare>();
  @$core.pragma('dart2js:noInline')
  static Compare getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Compare>(create);
  static Compare? _defaultInstance;

  Compare_TargetUnion whichTargetUnion() =>
      _Compare_TargetUnionByTag[$_whichOneof(0)]!;
  void clearTargetUnion() => clearField($_whichOneof(0));

  /// result is logical comparison operation for this comparison.
  @$pb.TagNumber(1)
  Compare_CompareResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Compare_CompareResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  /// target is the key-value field to inspect for the comparison.
  @$pb.TagNumber(2)
  Compare_CompareTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(Compare_CompareTarget v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);

  /// key is the subject key for the comparison operation.
  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(2);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  /// version is the version of the given key
  @$pb.TagNumber(4)
  $fixnum.Int64 get version => $_getI64(3);
  @$pb.TagNumber(4)
  set version($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  /// create_revision is the creation revision of the given key
  @$pb.TagNumber(5)
  $fixnum.Int64 get createRevision => $_getI64(4);
  @$pb.TagNumber(5)
  set createRevision($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCreateRevision() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateRevision() => clearField(5);

  /// mod_revision is the last modified revision of the given key.
  @$pb.TagNumber(6)
  $fixnum.Int64 get modRevision => $_getI64(5);
  @$pb.TagNumber(6)
  set modRevision($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasModRevision() => $_has(5);
  @$pb.TagNumber(6)
  void clearModRevision() => clearField(6);

  /// value is the value of the given key, in bytes.
  @$pb.TagNumber(7)
  $core.List<$core.int> get value => $_getN(6);
  @$pb.TagNumber(7)
  set value($core.List<$core.int> v) {
    $_setBytes(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearValue() => clearField(7);

  /// lease is the lease id of the given key.
  @$pb.TagNumber(8)
  $fixnum.Int64 get lease => $_getI64(7);
  @$pb.TagNumber(8)
  set lease($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasLease() => $_has(7);
  @$pb.TagNumber(8)
  void clearLease() => clearField(8);

  /// range_end compares the given target to all keys in the range [key, range_end).
  /// See RangeRequest for more details on key ranges.
  @$pb.TagNumber(64)
  $core.List<$core.int> get rangeEnd => $_getN(8);
  @$pb.TagNumber(64)
  set rangeEnd($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  @$pb.TagNumber(64)
  $core.bool hasRangeEnd() => $_has(8);
  @$pb.TagNumber(64)
  void clearRangeEnd() => clearField(64);
}

/// From google paxosdb paper:
/// Our implementation hinges around a powerful primitive which we call MultiOp. All other database
/// operations except for iteration are implemented as a single call to MultiOp. A MultiOp is applied atomically
/// and consists of three components:
/// 1. A list of tests called guard. Each test in guard checks a single entry in the database. It may check
/// for the absence or presence of a value, or compare with a given value. Two different tests in the guard
/// may apply to the same or different entries in the database. All tests in the guard are applied and
/// MultiOp returns the results. If all tests are true, MultiOp executes t op (see item 2 below), otherwise
/// it executes f op (see item 3 below).
/// 2. A list of database operations called t op. Each operation in the list is either an insert, delete, or
/// lookup operation, and applies to a single database entry. Two different operations in the list may apply
/// to the same or different entries in the database. These operations are executed
/// if guard evaluates to
/// true.
/// 3. A list of database operations called f op. Like t op, but executed if guard evaluates to false.
class TxnRequest extends $pb.GeneratedMessage {
  factory TxnRequest({
    $core.Iterable<Compare>? compare,
    $core.Iterable<RequestOp>? success,
    $core.Iterable<RequestOp>? failure,
  }) {
    final $result = create();
    if (compare != null) {
      $result.compare.addAll(compare);
    }
    if (success != null) {
      $result.success.addAll(success);
    }
    if (failure != null) {
      $result.failure.addAll(failure);
    }
    return $result;
  }
  TxnRequest._() : super();
  factory TxnRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TxnRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TxnRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..pc<Compare>(1, _omitFieldNames ? '' : 'compare', $pb.PbFieldType.PM,
        subBuilder: Compare.create)
    ..pc<RequestOp>(2, _omitFieldNames ? '' : 'success', $pb.PbFieldType.PM,
        subBuilder: RequestOp.create)
    ..pc<RequestOp>(3, _omitFieldNames ? '' : 'failure', $pb.PbFieldType.PM,
        subBuilder: RequestOp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TxnRequest clone() => TxnRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TxnRequest copyWith(void Function(TxnRequest) updates) =>
      super.copyWith((message) => updates(message as TxnRequest)) as TxnRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TxnRequest create() => TxnRequest._();
  TxnRequest createEmptyInstance() => create();
  static $pb.PbList<TxnRequest> createRepeated() => $pb.PbList<TxnRequest>();
  @$core.pragma('dart2js:noInline')
  static TxnRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TxnRequest>(create);
  static TxnRequest? _defaultInstance;

  /// compare is a list of predicates representing a conjunction of terms.
  /// If the comparisons succeed, then the success requests will be processed in order,
  /// and the response will contain their respective responses in order.
  /// If the comparisons fail, then the failure requests will be processed in order,
  /// and the response will contain their respective responses in order.
  @$pb.TagNumber(1)
  $core.List<Compare> get compare => $_getList(0);

  /// success is a list of requests which will be applied when compare evaluates to true.
  @$pb.TagNumber(2)
  $core.List<RequestOp> get success => $_getList(1);

  /// failure is a list of requests which will be applied when compare evaluates to false.
  @$pb.TagNumber(3)
  $core.List<RequestOp> get failure => $_getList(2);
}

class TxnResponse extends $pb.GeneratedMessage {
  factory TxnResponse({
    ResponseHeader? header,
    $core.bool? succeeded,
    $core.Iterable<ResponseOp>? responses,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (succeeded != null) {
      $result.succeeded = succeeded;
    }
    if (responses != null) {
      $result.responses.addAll(responses);
    }
    return $result;
  }
  TxnResponse._() : super();
  factory TxnResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TxnResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TxnResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOB(2, _omitFieldNames ? '' : 'succeeded')
    ..pc<ResponseOp>(3, _omitFieldNames ? '' : 'responses', $pb.PbFieldType.PM,
        subBuilder: ResponseOp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TxnResponse clone() => TxnResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TxnResponse copyWith(void Function(TxnResponse) updates) =>
      super.copyWith((message) => updates(message as TxnResponse))
          as TxnResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TxnResponse create() => TxnResponse._();
  TxnResponse createEmptyInstance() => create();
  static $pb.PbList<TxnResponse> createRepeated() => $pb.PbList<TxnResponse>();
  @$core.pragma('dart2js:noInline')
  static TxnResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TxnResponse>(create);
  static TxnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// succeeded is set to true if the compare evaluated to true or false otherwise.
  @$pb.TagNumber(2)
  $core.bool get succeeded => $_getBF(1);
  @$pb.TagNumber(2)
  set succeeded($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSucceeded() => $_has(1);
  @$pb.TagNumber(2)
  void clearSucceeded() => clearField(2);

  /// responses is a list of responses corresponding to the results from applying
  /// success if succeeded is true or failure if succeeded is false.
  @$pb.TagNumber(3)
  $core.List<ResponseOp> get responses => $_getList(2);
}

/// CompactionRequest compacts the key-value store up to a given revision. All superseded keys
/// with a revision less than the compaction revision will be removed.
class CompactionRequest extends $pb.GeneratedMessage {
  factory CompactionRequest({
    $fixnum.Int64? revision,
    $core.bool? physical,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    if (physical != null) {
      $result.physical = physical;
    }
    return $result;
  }
  CompactionRequest._() : super();
  factory CompactionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CompactionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompactionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'revision')
    ..aOB(2, _omitFieldNames ? '' : 'physical')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CompactionRequest clone() => CompactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CompactionRequest copyWith(void Function(CompactionRequest) updates) =>
      super.copyWith((message) => updates(message as CompactionRequest))
          as CompactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompactionRequest create() => CompactionRequest._();
  CompactionRequest createEmptyInstance() => create();
  static $pb.PbList<CompactionRequest> createRepeated() =>
      $pb.PbList<CompactionRequest>();
  @$core.pragma('dart2js:noInline')
  static CompactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompactionRequest>(create);
  static CompactionRequest? _defaultInstance;

  /// revision is the key-value store revision for the compaction operation.
  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);

  /// physical is set so the RPC will wait until the compaction is physically
  /// applied to the local database such that compacted entries are totally
  /// removed from the backend database.
  @$pb.TagNumber(2)
  $core.bool get physical => $_getBF(1);
  @$pb.TagNumber(2)
  set physical($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPhysical() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhysical() => clearField(2);
}

class CompactionResponse extends $pb.GeneratedMessage {
  factory CompactionResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  CompactionResponse._() : super();
  factory CompactionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CompactionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompactionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CompactionResponse clone() => CompactionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CompactionResponse copyWith(void Function(CompactionResponse) updates) =>
      super.copyWith((message) => updates(message as CompactionResponse))
          as CompactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompactionResponse create() => CompactionResponse._();
  CompactionResponse createEmptyInstance() => create();
  static $pb.PbList<CompactionResponse> createRepeated() =>
      $pb.PbList<CompactionResponse>();
  @$core.pragma('dart2js:noInline')
  static CompactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompactionResponse>(create);
  static CompactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class HashRequest extends $pb.GeneratedMessage {
  factory HashRequest() => create();
  HashRequest._() : super();
  factory HashRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HashRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HashRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HashRequest clone() => HashRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HashRequest copyWith(void Function(HashRequest) updates) =>
      super.copyWith((message) => updates(message as HashRequest))
          as HashRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HashRequest create() => HashRequest._();
  HashRequest createEmptyInstance() => create();
  static $pb.PbList<HashRequest> createRepeated() => $pb.PbList<HashRequest>();
  @$core.pragma('dart2js:noInline')
  static HashRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HashRequest>(create);
  static HashRequest? _defaultInstance;
}

class HashKVRequest extends $pb.GeneratedMessage {
  factory HashKVRequest({
    $fixnum.Int64? revision,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    return $result;
  }
  HashKVRequest._() : super();
  factory HashKVRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HashKVRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HashKVRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'revision')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HashKVRequest clone() => HashKVRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HashKVRequest copyWith(void Function(HashKVRequest) updates) =>
      super.copyWith((message) => updates(message as HashKVRequest))
          as HashKVRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HashKVRequest create() => HashKVRequest._();
  HashKVRequest createEmptyInstance() => create();
  static $pb.PbList<HashKVRequest> createRepeated() =>
      $pb.PbList<HashKVRequest>();
  @$core.pragma('dart2js:noInline')
  static HashKVRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HashKVRequest>(create);
  static HashKVRequest? _defaultInstance;

  /// revision is the key-value store revision for the hash operation.
  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);
}

class HashKVResponse extends $pb.GeneratedMessage {
  factory HashKVResponse({
    ResponseHeader? header,
    $core.int? hash,
    $fixnum.Int64? compactRevision,
    $fixnum.Int64? hashRevision,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    if (compactRevision != null) {
      $result.compactRevision = compactRevision;
    }
    if (hashRevision != null) {
      $result.hashRevision = hashRevision;
    }
    return $result;
  }
  HashKVResponse._() : super();
  factory HashKVResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HashKVResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HashKVResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OU3)
    ..aInt64(3, _omitFieldNames ? '' : 'compactRevision')
    ..aInt64(4, _omitFieldNames ? '' : 'hashRevision')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HashKVResponse clone() => HashKVResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HashKVResponse copyWith(void Function(HashKVResponse) updates) =>
      super.copyWith((message) => updates(message as HashKVResponse))
          as HashKVResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HashKVResponse create() => HashKVResponse._();
  HashKVResponse createEmptyInstance() => create();
  static $pb.PbList<HashKVResponse> createRepeated() =>
      $pb.PbList<HashKVResponse>();
  @$core.pragma('dart2js:noInline')
  static HashKVResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HashKVResponse>(create);
  static HashKVResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// hash is the hash value computed from the responding member's MVCC keys up to a given revision.
  @$pb.TagNumber(2)
  $core.int get hash => $_getIZ(1);
  @$pb.TagNumber(2)
  set hash($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  /// compact_revision is the compacted revision of key-value store when hash begins.
  @$pb.TagNumber(3)
  $fixnum.Int64 get compactRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set compactRevision($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCompactRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompactRevision() => clearField(3);

  /// hash_revision is the revision up to which the hash is calculated.
  @$pb.TagNumber(4)
  $fixnum.Int64 get hashRevision => $_getI64(3);
  @$pb.TagNumber(4)
  set hashRevision($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHashRevision() => $_has(3);
  @$pb.TagNumber(4)
  void clearHashRevision() => clearField(4);
}

class HashResponse extends $pb.GeneratedMessage {
  factory HashResponse({
    ResponseHeader? header,
    $core.int? hash,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    return $result;
  }
  HashResponse._() : super();
  factory HashResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HashResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HashResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HashResponse clone() => HashResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HashResponse copyWith(void Function(HashResponse) updates) =>
      super.copyWith((message) => updates(message as HashResponse))
          as HashResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HashResponse create() => HashResponse._();
  HashResponse createEmptyInstance() => create();
  static $pb.PbList<HashResponse> createRepeated() =>
      $pb.PbList<HashResponse>();
  @$core.pragma('dart2js:noInline')
  static HashResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HashResponse>(create);
  static HashResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// hash is the hash value computed from the responding member's KV's backend.
  @$pb.TagNumber(2)
  $core.int get hash => $_getIZ(1);
  @$pb.TagNumber(2)
  set hash($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

class SnapshotRequest extends $pb.GeneratedMessage {
  factory SnapshotRequest() => create();
  SnapshotRequest._() : super();
  factory SnapshotRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SnapshotRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SnapshotRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SnapshotRequest clone() => SnapshotRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SnapshotRequest copyWith(void Function(SnapshotRequest) updates) =>
      super.copyWith((message) => updates(message as SnapshotRequest))
          as SnapshotRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotRequest create() => SnapshotRequest._();
  SnapshotRequest createEmptyInstance() => create();
  static $pb.PbList<SnapshotRequest> createRepeated() =>
      $pb.PbList<SnapshotRequest>();
  @$core.pragma('dart2js:noInline')
  static SnapshotRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SnapshotRequest>(create);
  static SnapshotRequest? _defaultInstance;
}

class SnapshotResponse extends $pb.GeneratedMessage {
  factory SnapshotResponse({
    ResponseHeader? header,
    $fixnum.Int64? remainingBytes,
    $core.List<$core.int>? blob,
    $core.String? version,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (remainingBytes != null) {
      $result.remainingBytes = remainingBytes;
    }
    if (blob != null) {
      $result.blob = blob;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  SnapshotResponse._() : super();
  factory SnapshotResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SnapshotResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SnapshotResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'remainingBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'blob', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SnapshotResponse clone() => SnapshotResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SnapshotResponse copyWith(void Function(SnapshotResponse) updates) =>
      super.copyWith((message) => updates(message as SnapshotResponse))
          as SnapshotResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotResponse create() => SnapshotResponse._();
  SnapshotResponse createEmptyInstance() => create();
  static $pb.PbList<SnapshotResponse> createRepeated() =>
      $pb.PbList<SnapshotResponse>();
  @$core.pragma('dart2js:noInline')
  static SnapshotResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SnapshotResponse>(create);
  static SnapshotResponse? _defaultInstance;

  /// header has the current key-value store information. The first header in the snapshot
  /// stream indicates the point in time of the snapshot.
  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// remaining_bytes is the number of blob bytes to be sent after this message
  @$pb.TagNumber(2)
  $fixnum.Int64 get remainingBytes => $_getI64(1);
  @$pb.TagNumber(2)
  set remainingBytes($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRemainingBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemainingBytes() => clearField(2);

  /// blob contains the next chunk of the snapshot in the snapshot stream.
  @$pb.TagNumber(3)
  $core.List<$core.int> get blob => $_getN(2);
  @$pb.TagNumber(3)
  set blob($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlob() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlob() => clearField(3);

  /// local version of server that created the snapshot.
  /// In cluster with binaries with different version, each cluster can return different result.
  /// Informs which etcd server version should be used when restoring the snapshot.
  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);
}

enum WatchRequest_RequestUnion {
  createRequest,
  cancelRequest,
  progressRequest,
  notSet
}

class WatchRequest extends $pb.GeneratedMessage {
  factory WatchRequest({
    WatchCreateRequest? createRequest,
    WatchCancelRequest? cancelRequest,
    WatchProgressRequest? progressRequest,
  }) {
    final $result = create();
    if (createRequest != null) {
      $result.createRequest = createRequest;
    }
    if (cancelRequest != null) {
      $result.cancelRequest = cancelRequest;
    }
    if (progressRequest != null) {
      $result.progressRequest = progressRequest;
    }
    return $result;
  }
  WatchRequest._() : super();
  factory WatchRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WatchRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WatchRequest_RequestUnion>
      _WatchRequest_RequestUnionByTag = {
    1: WatchRequest_RequestUnion.createRequest,
    2: WatchRequest_RequestUnion.cancelRequest,
    3: WatchRequest_RequestUnion.progressRequest,
    0: WatchRequest_RequestUnion.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<WatchCreateRequest>(1, _omitFieldNames ? '' : 'createRequest',
        subBuilder: WatchCreateRequest.create)
    ..aOM<WatchCancelRequest>(2, _omitFieldNames ? '' : 'cancelRequest',
        subBuilder: WatchCancelRequest.create)
    ..aOM<WatchProgressRequest>(3, _omitFieldNames ? '' : 'progressRequest',
        subBuilder: WatchProgressRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WatchRequest clone() => WatchRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WatchRequest copyWith(void Function(WatchRequest) updates) =>
      super.copyWith((message) => updates(message as WatchRequest))
          as WatchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchRequest create() => WatchRequest._();
  WatchRequest createEmptyInstance() => create();
  static $pb.PbList<WatchRequest> createRepeated() =>
      $pb.PbList<WatchRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchRequest>(create);
  static WatchRequest? _defaultInstance;

  WatchRequest_RequestUnion whichRequestUnion() =>
      _WatchRequest_RequestUnionByTag[$_whichOneof(0)]!;
  void clearRequestUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WatchCreateRequest get createRequest => $_getN(0);
  @$pb.TagNumber(1)
  set createRequest(WatchCreateRequest v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCreateRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateRequest() => clearField(1);
  @$pb.TagNumber(1)
  WatchCreateRequest ensureCreateRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  WatchCancelRequest get cancelRequest => $_getN(1);
  @$pb.TagNumber(2)
  set cancelRequest(WatchCancelRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCancelRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearCancelRequest() => clearField(2);
  @$pb.TagNumber(2)
  WatchCancelRequest ensureCancelRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  WatchProgressRequest get progressRequest => $_getN(2);
  @$pb.TagNumber(3)
  set progressRequest(WatchProgressRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProgressRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgressRequest() => clearField(3);
  @$pb.TagNumber(3)
  WatchProgressRequest ensureProgressRequest() => $_ensure(2);
}

class WatchCreateRequest extends $pb.GeneratedMessage {
  factory WatchCreateRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
    $fixnum.Int64? startRevision,
    $core.bool? progressNotify,
    $core.Iterable<WatchCreateRequest_FilterType>? filters,
    $core.bool? prevKv,
    $fixnum.Int64? watchId,
    $core.bool? fragment,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (rangeEnd != null) {
      $result.rangeEnd = rangeEnd;
    }
    if (startRevision != null) {
      $result.startRevision = startRevision;
    }
    if (progressNotify != null) {
      $result.progressNotify = progressNotify;
    }
    if (filters != null) {
      $result.filters.addAll(filters);
    }
    if (prevKv != null) {
      $result.prevKv = prevKv;
    }
    if (watchId != null) {
      $result.watchId = watchId;
    }
    if (fragment != null) {
      $result.fragment = fragment;
    }
    return $result;
  }
  WatchCreateRequest._() : super();
  factory WatchCreateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WatchCreateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..aInt64(3, _omitFieldNames ? '' : 'startRevision')
    ..aOB(4, _omitFieldNames ? '' : 'progressNotify')
    ..pc<WatchCreateRequest_FilterType>(
        5, _omitFieldNames ? '' : 'filters', $pb.PbFieldType.KE,
        valueOf: WatchCreateRequest_FilterType.valueOf,
        enumValues: WatchCreateRequest_FilterType.values,
        defaultEnumValue: WatchCreateRequest_FilterType.NOPUT)
    ..aOB(6, _omitFieldNames ? '' : 'prevKv')
    ..aInt64(7, _omitFieldNames ? '' : 'watchId')
    ..aOB(8, _omitFieldNames ? '' : 'fragment')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WatchCreateRequest clone() => WatchCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WatchCreateRequest copyWith(void Function(WatchCreateRequest) updates) =>
      super.copyWith((message) => updates(message as WatchCreateRequest))
          as WatchCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchCreateRequest create() => WatchCreateRequest._();
  WatchCreateRequest createEmptyInstance() => create();
  static $pb.PbList<WatchCreateRequest> createRepeated() =>
      $pb.PbList<WatchCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchCreateRequest>(create);
  static WatchCreateRequest? _defaultInstance;

  /// key is the key to register for watching.
  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// range_end is the end of the range [key, range_end) to watch. If range_end is not given,
  /// only the key argument is watched. If range_end is equal to '\0', all keys greater than
  /// or equal to the key argument are watched.
  /// If the range_end is one bit larger than the given key,
  /// then all keys with the prefix (the given key) will be watched.
  @$pb.TagNumber(2)
  $core.List<$core.int> get rangeEnd => $_getN(1);
  @$pb.TagNumber(2)
  set rangeEnd($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRangeEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeEnd() => clearField(2);

  /// start_revision is an optional revision to watch from (inclusive). No start_revision is "now".
  @$pb.TagNumber(3)
  $fixnum.Int64 get startRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set startRevision($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStartRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartRevision() => clearField(3);

  /// progress_notify is set so that the etcd server will periodically send a WatchResponse with
  /// no events to the new watcher if there are no recent events. It is useful when clients
  /// wish to recover a disconnected watcher starting from a recent known revision.
  /// The etcd server may decide how often it will send notifications based on current load.
  @$pb.TagNumber(4)
  $core.bool get progressNotify => $_getBF(3);
  @$pb.TagNumber(4)
  set progressNotify($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProgressNotify() => $_has(3);
  @$pb.TagNumber(4)
  void clearProgressNotify() => clearField(4);

  /// filters filter the events at server side before it sends back to the watcher.
  @$pb.TagNumber(5)
  $core.List<WatchCreateRequest_FilterType> get filters => $_getList(4);

  /// If prev_kv is set, created watcher gets the previous KV before the event happens.
  /// If the previous KV is already compacted, nothing will be returned.
  @$pb.TagNumber(6)
  $core.bool get prevKv => $_getBF(5);
  @$pb.TagNumber(6)
  set prevKv($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPrevKv() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrevKv() => clearField(6);

  /// If watch_id is provided and non-zero, it will be assigned to this watcher.
  /// Since creating a watcher in etcd is not a synchronous operation,
  /// this can be used ensure that ordering is correct when creating multiple
  /// watchers on the same stream. Creating a watcher with an ID already in
  /// use on the stream will cause an error to be returned.
  @$pb.TagNumber(7)
  $fixnum.Int64 get watchId => $_getI64(6);
  @$pb.TagNumber(7)
  set watchId($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasWatchId() => $_has(6);
  @$pb.TagNumber(7)
  void clearWatchId() => clearField(7);

  /// fragment enables splitting large revisions into multiple watch responses.
  @$pb.TagNumber(8)
  $core.bool get fragment => $_getBF(7);
  @$pb.TagNumber(8)
  set fragment($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFragment() => $_has(7);
  @$pb.TagNumber(8)
  void clearFragment() => clearField(8);
}

class WatchCancelRequest extends $pb.GeneratedMessage {
  factory WatchCancelRequest({
    $fixnum.Int64? watchId,
  }) {
    final $result = create();
    if (watchId != null) {
      $result.watchId = watchId;
    }
    return $result;
  }
  WatchCancelRequest._() : super();
  factory WatchCancelRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WatchCancelRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchCancelRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'watchId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WatchCancelRequest clone() => WatchCancelRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WatchCancelRequest copyWith(void Function(WatchCancelRequest) updates) =>
      super.copyWith((message) => updates(message as WatchCancelRequest))
          as WatchCancelRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchCancelRequest create() => WatchCancelRequest._();
  WatchCancelRequest createEmptyInstance() => create();
  static $pb.PbList<WatchCancelRequest> createRepeated() =>
      $pb.PbList<WatchCancelRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchCancelRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchCancelRequest>(create);
  static WatchCancelRequest? _defaultInstance;

  /// watch_id is the watcher id to cancel so that no more events are transmitted.
  @$pb.TagNumber(1)
  $fixnum.Int64 get watchId => $_getI64(0);
  @$pb.TagNumber(1)
  set watchId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWatchId() => clearField(1);
}

/// Requests the a watch stream progress status be sent in the watch response stream as soon as
/// possible.
class WatchProgressRequest extends $pb.GeneratedMessage {
  factory WatchProgressRequest() => create();
  WatchProgressRequest._() : super();
  factory WatchProgressRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WatchProgressRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchProgressRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WatchProgressRequest clone() =>
      WatchProgressRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WatchProgressRequest copyWith(void Function(WatchProgressRequest) updates) =>
      super.copyWith((message) => updates(message as WatchProgressRequest))
          as WatchProgressRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchProgressRequest create() => WatchProgressRequest._();
  WatchProgressRequest createEmptyInstance() => create();
  static $pb.PbList<WatchProgressRequest> createRepeated() =>
      $pb.PbList<WatchProgressRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchProgressRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchProgressRequest>(create);
  static WatchProgressRequest? _defaultInstance;
}

class WatchResponse extends $pb.GeneratedMessage {
  factory WatchResponse({
    ResponseHeader? header,
    $fixnum.Int64? watchId,
    $core.bool? created,
    $core.bool? canceled,
    $fixnum.Int64? compactRevision,
    $core.String? cancelReason,
    $core.bool? fragment,
    $core.Iterable<$1.Event>? events,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (watchId != null) {
      $result.watchId = watchId;
    }
    if (created != null) {
      $result.created = created;
    }
    if (canceled != null) {
      $result.canceled = canceled;
    }
    if (compactRevision != null) {
      $result.compactRevision = compactRevision;
    }
    if (cancelReason != null) {
      $result.cancelReason = cancelReason;
    }
    if (fragment != null) {
      $result.fragment = fragment;
    }
    if (events != null) {
      $result.events.addAll(events);
    }
    return $result;
  }
  WatchResponse._() : super();
  factory WatchResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WatchResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aInt64(2, _omitFieldNames ? '' : 'watchId')
    ..aOB(3, _omitFieldNames ? '' : 'created')
    ..aOB(4, _omitFieldNames ? '' : 'canceled')
    ..aInt64(5, _omitFieldNames ? '' : 'compactRevision')
    ..aOS(6, _omitFieldNames ? '' : 'cancelReason')
    ..aOB(7, _omitFieldNames ? '' : 'fragment')
    ..pc<$1.Event>(11, _omitFieldNames ? '' : 'events', $pb.PbFieldType.PM,
        subBuilder: $1.Event.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WatchResponse clone() => WatchResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WatchResponse copyWith(void Function(WatchResponse) updates) =>
      super.copyWith((message) => updates(message as WatchResponse))
          as WatchResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchResponse create() => WatchResponse._();
  WatchResponse createEmptyInstance() => create();
  static $pb.PbList<WatchResponse> createRepeated() =>
      $pb.PbList<WatchResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WatchResponse>(create);
  static WatchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// watch_id is the ID of the watcher that corresponds to the response.
  @$pb.TagNumber(2)
  $fixnum.Int64 get watchId => $_getI64(1);
  @$pb.TagNumber(2)
  set watchId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWatchId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWatchId() => clearField(2);

  /// created is set to true if the response is for a create watch request.
  /// The client should record the watch_id and expect to receive events for
  /// the created watcher from the same stream.
  /// All events sent to the created watcher will attach with the same watch_id.
  @$pb.TagNumber(3)
  $core.bool get created => $_getBF(2);
  @$pb.TagNumber(3)
  set created($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreated() => clearField(3);

  /// canceled is set to true if the response is for a cancel watch request.
  /// No further events will be sent to the canceled watcher.
  @$pb.TagNumber(4)
  $core.bool get canceled => $_getBF(3);
  @$pb.TagNumber(4)
  set canceled($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCanceled() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanceled() => clearField(4);

  ///  compact_revision is set to the minimum index if a watcher tries to watch
  ///  at a compacted index.
  ///
  ///  This happens when creating a watcher at a compacted revision or the watcher cannot
  ///  catch up with the progress of the key-value store.
  ///
  ///  The client should treat the watcher as canceled and should not try to create any
  ///  watcher with the same start_revision again.
  @$pb.TagNumber(5)
  $fixnum.Int64 get compactRevision => $_getI64(4);
  @$pb.TagNumber(5)
  set compactRevision($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCompactRevision() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompactRevision() => clearField(5);

  /// cancel_reason indicates the reason for canceling the watcher.
  @$pb.TagNumber(6)
  $core.String get cancelReason => $_getSZ(5);
  @$pb.TagNumber(6)
  set cancelReason($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCancelReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearCancelReason() => clearField(6);

  /// framgment is true if large watch response was split over multiple responses.
  @$pb.TagNumber(7)
  $core.bool get fragment => $_getBF(6);
  @$pb.TagNumber(7)
  set fragment($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFragment() => $_has(6);
  @$pb.TagNumber(7)
  void clearFragment() => clearField(7);

  @$pb.TagNumber(11)
  $core.List<$1.Event> get events => $_getList(7);
}

class LeaseGrantRequest extends $pb.GeneratedMessage {
  factory LeaseGrantRequest({
    $fixnum.Int64? tTL,
    $fixnum.Int64? iD,
  }) {
    final $result = create();
    if (tTL != null) {
      $result.tTL = tTL;
    }
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  LeaseGrantRequest._() : super();
  factory LeaseGrantRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseGrantRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseGrantRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'TTL', protoName: 'TTL')
    ..aInt64(2, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseGrantRequest clone() => LeaseGrantRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseGrantRequest copyWith(void Function(LeaseGrantRequest) updates) =>
      super.copyWith((message) => updates(message as LeaseGrantRequest))
          as LeaseGrantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseGrantRequest create() => LeaseGrantRequest._();
  LeaseGrantRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseGrantRequest> createRepeated() =>
      $pb.PbList<LeaseGrantRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseGrantRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseGrantRequest>(create);
  static LeaseGrantRequest? _defaultInstance;

  /// TTL is the advisory time-to-live in seconds. Expired lease will return -1.
  @$pb.TagNumber(1)
  $fixnum.Int64 get tTL => $_getI64(0);
  @$pb.TagNumber(1)
  set tTL($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTTL() => $_has(0);
  @$pb.TagNumber(1)
  void clearTTL() => clearField(1);

  /// ID is the requested ID for the lease. If ID is set to 0, the lessor chooses an ID.
  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);
}

class LeaseGrantResponse extends $pb.GeneratedMessage {
  factory LeaseGrantResponse({
    ResponseHeader? header,
    $fixnum.Int64? iD,
    $fixnum.Int64? tTL,
    $core.String? error,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (iD != null) {
      $result.iD = iD;
    }
    if (tTL != null) {
      $result.tTL = tTL;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  LeaseGrantResponse._() : super();
  factory LeaseGrantResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseGrantResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseGrantResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aInt64(2, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aInt64(3, _omitFieldNames ? '' : 'TTL', protoName: 'TTL')
    ..aOS(4, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseGrantResponse clone() => LeaseGrantResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseGrantResponse copyWith(void Function(LeaseGrantResponse) updates) =>
      super.copyWith((message) => updates(message as LeaseGrantResponse))
          as LeaseGrantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseGrantResponse create() => LeaseGrantResponse._();
  LeaseGrantResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseGrantResponse> createRepeated() =>
      $pb.PbList<LeaseGrantResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseGrantResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseGrantResponse>(create);
  static LeaseGrantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// ID is the lease ID for the granted lease.
  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);

  /// TTL is the server chosen lease time-to-live in seconds.
  @$pb.TagNumber(3)
  $fixnum.Int64 get tTL => $_getI64(2);
  @$pb.TagNumber(3)
  set tTL($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTTL() => $_has(2);
  @$pb.TagNumber(3)
  void clearTTL() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);
}

class LeaseRevokeRequest extends $pb.GeneratedMessage {
  factory LeaseRevokeRequest({
    $fixnum.Int64? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  LeaseRevokeRequest._() : super();
  factory LeaseRevokeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseRevokeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseRevokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseRevokeRequest clone() => LeaseRevokeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseRevokeRequest copyWith(void Function(LeaseRevokeRequest) updates) =>
      super.copyWith((message) => updates(message as LeaseRevokeRequest))
          as LeaseRevokeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseRevokeRequest create() => LeaseRevokeRequest._();
  LeaseRevokeRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseRevokeRequest> createRepeated() =>
      $pb.PbList<LeaseRevokeRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseRevokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseRevokeRequest>(create);
  static LeaseRevokeRequest? _defaultInstance;

  /// ID is the lease ID to revoke. When the ID is revoked, all associated keys will be deleted.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class LeaseRevokeResponse extends $pb.GeneratedMessage {
  factory LeaseRevokeResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  LeaseRevokeResponse._() : super();
  factory LeaseRevokeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseRevokeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseRevokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseRevokeResponse clone() => LeaseRevokeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseRevokeResponse copyWith(void Function(LeaseRevokeResponse) updates) =>
      super.copyWith((message) => updates(message as LeaseRevokeResponse))
          as LeaseRevokeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseRevokeResponse create() => LeaseRevokeResponse._();
  LeaseRevokeResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseRevokeResponse> createRepeated() =>
      $pb.PbList<LeaseRevokeResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseRevokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseRevokeResponse>(create);
  static LeaseRevokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class LeaseCheckpoint extends $pb.GeneratedMessage {
  factory LeaseCheckpoint({
    $fixnum.Int64? iD,
    $fixnum.Int64? remainingTTL,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (remainingTTL != null) {
      $result.remainingTTL = remainingTTL;
    }
    return $result;
  }
  LeaseCheckpoint._() : super();
  factory LeaseCheckpoint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseCheckpoint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseCheckpoint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aInt64(2, _omitFieldNames ? '' : 'remainingTTL',
        protoName: 'remaining_TTL')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseCheckpoint clone() => LeaseCheckpoint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseCheckpoint copyWith(void Function(LeaseCheckpoint) updates) =>
      super.copyWith((message) => updates(message as LeaseCheckpoint))
          as LeaseCheckpoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseCheckpoint create() => LeaseCheckpoint._();
  LeaseCheckpoint createEmptyInstance() => create();
  static $pb.PbList<LeaseCheckpoint> createRepeated() =>
      $pb.PbList<LeaseCheckpoint>();
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseCheckpoint>(create);
  static LeaseCheckpoint? _defaultInstance;

  /// ID is the lease ID to checkpoint.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  /// Remaining_TTL is the remaining time until expiry of the lease.
  @$pb.TagNumber(2)
  $fixnum.Int64 get remainingTTL => $_getI64(1);
  @$pb.TagNumber(2)
  set remainingTTL($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRemainingTTL() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemainingTTL() => clearField(2);
}

class LeaseCheckpointRequest extends $pb.GeneratedMessage {
  factory LeaseCheckpointRequest({
    $core.Iterable<LeaseCheckpoint>? checkpoints,
  }) {
    final $result = create();
    if (checkpoints != null) {
      $result.checkpoints.addAll(checkpoints);
    }
    return $result;
  }
  LeaseCheckpointRequest._() : super();
  factory LeaseCheckpointRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseCheckpointRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseCheckpointRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..pc<LeaseCheckpoint>(
        1, _omitFieldNames ? '' : 'checkpoints', $pb.PbFieldType.PM,
        subBuilder: LeaseCheckpoint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseCheckpointRequest clone() =>
      LeaseCheckpointRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseCheckpointRequest copyWith(
          void Function(LeaseCheckpointRequest) updates) =>
      super.copyWith((message) => updates(message as LeaseCheckpointRequest))
          as LeaseCheckpointRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointRequest create() => LeaseCheckpointRequest._();
  LeaseCheckpointRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseCheckpointRequest> createRepeated() =>
      $pb.PbList<LeaseCheckpointRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseCheckpointRequest>(create);
  static LeaseCheckpointRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LeaseCheckpoint> get checkpoints => $_getList(0);
}

class LeaseCheckpointResponse extends $pb.GeneratedMessage {
  factory LeaseCheckpointResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  LeaseCheckpointResponse._() : super();
  factory LeaseCheckpointResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseCheckpointResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseCheckpointResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseCheckpointResponse clone() =>
      LeaseCheckpointResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseCheckpointResponse copyWith(
          void Function(LeaseCheckpointResponse) updates) =>
      super.copyWith((message) => updates(message as LeaseCheckpointResponse))
          as LeaseCheckpointResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointResponse create() => LeaseCheckpointResponse._();
  LeaseCheckpointResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseCheckpointResponse> createRepeated() =>
      $pb.PbList<LeaseCheckpointResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseCheckpointResponse>(create);
  static LeaseCheckpointResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class LeaseKeepAliveRequest extends $pb.GeneratedMessage {
  factory LeaseKeepAliveRequest({
    $fixnum.Int64? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  LeaseKeepAliveRequest._() : super();
  factory LeaseKeepAliveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseKeepAliveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseKeepAliveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseKeepAliveRequest clone() =>
      LeaseKeepAliveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseKeepAliveRequest copyWith(
          void Function(LeaseKeepAliveRequest) updates) =>
      super.copyWith((message) => updates(message as LeaseKeepAliveRequest))
          as LeaseKeepAliveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveRequest create() => LeaseKeepAliveRequest._();
  LeaseKeepAliveRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseKeepAliveRequest> createRepeated() =>
      $pb.PbList<LeaseKeepAliveRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseKeepAliveRequest>(create);
  static LeaseKeepAliveRequest? _defaultInstance;

  /// ID is the lease ID for the lease to keep alive.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class LeaseKeepAliveResponse extends $pb.GeneratedMessage {
  factory LeaseKeepAliveResponse({
    ResponseHeader? header,
    $fixnum.Int64? iD,
    $fixnum.Int64? tTL,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (iD != null) {
      $result.iD = iD;
    }
    if (tTL != null) {
      $result.tTL = tTL;
    }
    return $result;
  }
  LeaseKeepAliveResponse._() : super();
  factory LeaseKeepAliveResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseKeepAliveResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseKeepAliveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aInt64(2, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aInt64(3, _omitFieldNames ? '' : 'TTL', protoName: 'TTL')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseKeepAliveResponse clone() =>
      LeaseKeepAliveResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseKeepAliveResponse copyWith(
          void Function(LeaseKeepAliveResponse) updates) =>
      super.copyWith((message) => updates(message as LeaseKeepAliveResponse))
          as LeaseKeepAliveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveResponse create() => LeaseKeepAliveResponse._();
  LeaseKeepAliveResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseKeepAliveResponse> createRepeated() =>
      $pb.PbList<LeaseKeepAliveResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseKeepAliveResponse>(create);
  static LeaseKeepAliveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// ID is the lease ID from the keep alive request.
  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);

  /// TTL is the new time-to-live for the lease.
  @$pb.TagNumber(3)
  $fixnum.Int64 get tTL => $_getI64(2);
  @$pb.TagNumber(3)
  set tTL($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTTL() => $_has(2);
  @$pb.TagNumber(3)
  void clearTTL() => clearField(3);
}

class LeaseTimeToLiveRequest extends $pb.GeneratedMessage {
  factory LeaseTimeToLiveRequest({
    $fixnum.Int64? iD,
    $core.bool? keys,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (keys != null) {
      $result.keys = keys;
    }
    return $result;
  }
  LeaseTimeToLiveRequest._() : super();
  factory LeaseTimeToLiveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseTimeToLiveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseTimeToLiveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseTimeToLiveRequest clone() =>
      LeaseTimeToLiveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseTimeToLiveRequest copyWith(
          void Function(LeaseTimeToLiveRequest) updates) =>
      super.copyWith((message) => updates(message as LeaseTimeToLiveRequest))
          as LeaseTimeToLiveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveRequest create() => LeaseTimeToLiveRequest._();
  LeaseTimeToLiveRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseTimeToLiveRequest> createRepeated() =>
      $pb.PbList<LeaseTimeToLiveRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseTimeToLiveRequest>(create);
  static LeaseTimeToLiveRequest? _defaultInstance;

  /// ID is the lease ID for the lease.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  /// keys is true to query all the keys attached to this lease.
  @$pb.TagNumber(2)
  $core.bool get keys => $_getBF(1);
  @$pb.TagNumber(2)
  set keys($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKeys() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeys() => clearField(2);
}

class LeaseTimeToLiveResponse extends $pb.GeneratedMessage {
  factory LeaseTimeToLiveResponse({
    ResponseHeader? header,
    $fixnum.Int64? iD,
    $fixnum.Int64? tTL,
    $fixnum.Int64? grantedTTL,
    $core.Iterable<$core.List<$core.int>>? keys,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (iD != null) {
      $result.iD = iD;
    }
    if (tTL != null) {
      $result.tTL = tTL;
    }
    if (grantedTTL != null) {
      $result.grantedTTL = grantedTTL;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  LeaseTimeToLiveResponse._() : super();
  factory LeaseTimeToLiveResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseTimeToLiveResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseTimeToLiveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aInt64(2, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aInt64(3, _omitFieldNames ? '' : 'TTL', protoName: 'TTL')
    ..aInt64(4, _omitFieldNames ? '' : 'grantedTTL', protoName: 'grantedTTL')
    ..p<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'keys', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseTimeToLiveResponse clone() =>
      LeaseTimeToLiveResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseTimeToLiveResponse copyWith(
          void Function(LeaseTimeToLiveResponse) updates) =>
      super.copyWith((message) => updates(message as LeaseTimeToLiveResponse))
          as LeaseTimeToLiveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveResponse create() => LeaseTimeToLiveResponse._();
  LeaseTimeToLiveResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseTimeToLiveResponse> createRepeated() =>
      $pb.PbList<LeaseTimeToLiveResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseTimeToLiveResponse>(create);
  static LeaseTimeToLiveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// ID is the lease ID from the keep alive request.
  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);

  /// TTL is the remaining TTL in seconds for the lease; the lease will expire in under TTL+1 seconds.
  @$pb.TagNumber(3)
  $fixnum.Int64 get tTL => $_getI64(2);
  @$pb.TagNumber(3)
  set tTL($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTTL() => $_has(2);
  @$pb.TagNumber(3)
  void clearTTL() => clearField(3);

  /// GrantedTTL is the initial granted time in seconds upon lease creation/renewal.
  @$pb.TagNumber(4)
  $fixnum.Int64 get grantedTTL => $_getI64(3);
  @$pb.TagNumber(4)
  set grantedTTL($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasGrantedTTL() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrantedTTL() => clearField(4);

  /// Keys is the list of keys attached to this lease.
  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get keys => $_getList(4);
}

class LeaseLeasesRequest extends $pb.GeneratedMessage {
  factory LeaseLeasesRequest() => create();
  LeaseLeasesRequest._() : super();
  factory LeaseLeasesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseLeasesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseLeasesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseLeasesRequest clone() => LeaseLeasesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseLeasesRequest copyWith(void Function(LeaseLeasesRequest) updates) =>
      super.copyWith((message) => updates(message as LeaseLeasesRequest))
          as LeaseLeasesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseLeasesRequest create() => LeaseLeasesRequest._();
  LeaseLeasesRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseLeasesRequest> createRepeated() =>
      $pb.PbList<LeaseLeasesRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseLeasesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseLeasesRequest>(create);
  static LeaseLeasesRequest? _defaultInstance;
}

class LeaseStatus extends $pb.GeneratedMessage {
  factory LeaseStatus({
    $fixnum.Int64? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  LeaseStatus._() : super();
  factory LeaseStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseStatus clone() => LeaseStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseStatus copyWith(void Function(LeaseStatus) updates) =>
      super.copyWith((message) => updates(message as LeaseStatus))
          as LeaseStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseStatus create() => LeaseStatus._();
  LeaseStatus createEmptyInstance() => create();
  static $pb.PbList<LeaseStatus> createRepeated() => $pb.PbList<LeaseStatus>();
  @$core.pragma('dart2js:noInline')
  static LeaseStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseStatus>(create);
  static LeaseStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class LeaseLeasesResponse extends $pb.GeneratedMessage {
  factory LeaseLeasesResponse({
    ResponseHeader? header,
    $core.Iterable<LeaseStatus>? leases,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (leases != null) {
      $result.leases.addAll(leases);
    }
    return $result;
  }
  LeaseLeasesResponse._() : super();
  factory LeaseLeasesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LeaseLeasesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaseLeasesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<LeaseStatus>(2, _omitFieldNames ? '' : 'leases', $pb.PbFieldType.PM,
        subBuilder: LeaseStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LeaseLeasesResponse clone() => LeaseLeasesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LeaseLeasesResponse copyWith(void Function(LeaseLeasesResponse) updates) =>
      super.copyWith((message) => updates(message as LeaseLeasesResponse))
          as LeaseLeasesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseLeasesResponse create() => LeaseLeasesResponse._();
  LeaseLeasesResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseLeasesResponse> createRepeated() =>
      $pb.PbList<LeaseLeasesResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseLeasesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaseLeasesResponse>(create);
  static LeaseLeasesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<LeaseStatus> get leases => $_getList(1);
}

class Member extends $pb.GeneratedMessage {
  factory Member({
    $fixnum.Int64? iD,
    $core.String? name,
    $core.Iterable<$core.String>? peerURLs,
    $core.Iterable<$core.String>? clientURLs,
    $core.bool? isLearner,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (name != null) {
      $result.name = name;
    }
    if (peerURLs != null) {
      $result.peerURLs.addAll(peerURLs);
    }
    if (clientURLs != null) {
      $result.clientURLs.addAll(clientURLs);
    }
    if (isLearner != null) {
      $result.isLearner = isLearner;
    }
    return $result;
  }
  Member._() : super();
  factory Member.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Member',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'ID', $pb.PbFieldType.OU6,
        protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'peerURLs', protoName: 'peerURLs')
    ..pPS(4, _omitFieldNames ? '' : 'clientURLs', protoName: 'clientURLs')
    ..aOB(5, _omitFieldNames ? '' : 'isLearner', protoName: 'isLearner')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) =>
      super.copyWith((message) => updates(message as Member)) as Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member? _defaultInstance;

  /// ID is the member ID for this member.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  /// name is the human-readable name of the member. If the member is not started, the name will be an empty string.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// peerURLs is the list of URLs the member exposes to the cluster for communication.
  @$pb.TagNumber(3)
  $core.List<$core.String> get peerURLs => $_getList(2);

  /// clientURLs is the list of URLs the member exposes to clients for communication. If the member is not started, clientURLs will be empty.
  @$pb.TagNumber(4)
  $core.List<$core.String> get clientURLs => $_getList(3);

  /// isLearner indicates if the member is raft learner.
  @$pb.TagNumber(5)
  $core.bool get isLearner => $_getBF(4);
  @$pb.TagNumber(5)
  set isLearner($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsLearner() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsLearner() => clearField(5);
}

class MemberAddRequest extends $pb.GeneratedMessage {
  factory MemberAddRequest({
    $core.Iterable<$core.String>? peerURLs,
    $core.bool? isLearner,
  }) {
    final $result = create();
    if (peerURLs != null) {
      $result.peerURLs.addAll(peerURLs);
    }
    if (isLearner != null) {
      $result.isLearner = isLearner;
    }
    return $result;
  }
  MemberAddRequest._() : super();
  factory MemberAddRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberAddRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberAddRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'peerURLs', protoName: 'peerURLs')
    ..aOB(2, _omitFieldNames ? '' : 'isLearner', protoName: 'isLearner')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberAddRequest clone() => MemberAddRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberAddRequest copyWith(void Function(MemberAddRequest) updates) =>
      super.copyWith((message) => updates(message as MemberAddRequest))
          as MemberAddRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberAddRequest create() => MemberAddRequest._();
  MemberAddRequest createEmptyInstance() => create();
  static $pb.PbList<MemberAddRequest> createRepeated() =>
      $pb.PbList<MemberAddRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberAddRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberAddRequest>(create);
  static MemberAddRequest? _defaultInstance;

  /// peerURLs is the list of URLs the added member will use to communicate with the cluster.
  @$pb.TagNumber(1)
  $core.List<$core.String> get peerURLs => $_getList(0);

  /// isLearner indicates if the added member is raft learner.
  @$pb.TagNumber(2)
  $core.bool get isLearner => $_getBF(1);
  @$pb.TagNumber(2)
  set isLearner($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsLearner() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLearner() => clearField(2);
}

class MemberAddResponse extends $pb.GeneratedMessage {
  factory MemberAddResponse({
    ResponseHeader? header,
    Member? member,
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (member != null) {
      $result.member = member;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  MemberAddResponse._() : super();
  factory MemberAddResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberAddResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberAddResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOM<Member>(2, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..pc<Member>(3, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: Member.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberAddResponse clone() => MemberAddResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberAddResponse copyWith(void Function(MemberAddResponse) updates) =>
      super.copyWith((message) => updates(message as MemberAddResponse))
          as MemberAddResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberAddResponse create() => MemberAddResponse._();
  MemberAddResponse createEmptyInstance() => create();
  static $pb.PbList<MemberAddResponse> createRepeated() =>
      $pb.PbList<MemberAddResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberAddResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberAddResponse>(create);
  static MemberAddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// member is the member information for the added member.
  @$pb.TagNumber(2)
  Member get member => $_getN(1);
  @$pb.TagNumber(2)
  set member(Member v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMember() => $_has(1);
  @$pb.TagNumber(2)
  void clearMember() => clearField(2);
  @$pb.TagNumber(2)
  Member ensureMember() => $_ensure(1);

  /// members is a list of all members after adding the new member.
  @$pb.TagNumber(3)
  $core.List<Member> get members => $_getList(2);
}

class MemberRemoveRequest extends $pb.GeneratedMessage {
  factory MemberRemoveRequest({
    $fixnum.Int64? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  MemberRemoveRequest._() : super();
  factory MemberRemoveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberRemoveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberRemoveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'ID', $pb.PbFieldType.OU6,
        protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberRemoveRequest clone() => MemberRemoveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberRemoveRequest copyWith(void Function(MemberRemoveRequest) updates) =>
      super.copyWith((message) => updates(message as MemberRemoveRequest))
          as MemberRemoveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberRemoveRequest create() => MemberRemoveRequest._();
  MemberRemoveRequest createEmptyInstance() => create();
  static $pb.PbList<MemberRemoveRequest> createRepeated() =>
      $pb.PbList<MemberRemoveRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberRemoveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberRemoveRequest>(create);
  static MemberRemoveRequest? _defaultInstance;

  /// ID is the member ID of the member to remove.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class MemberRemoveResponse extends $pb.GeneratedMessage {
  factory MemberRemoveResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  MemberRemoveResponse._() : super();
  factory MemberRemoveResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberRemoveResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberRemoveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<Member>(2, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: Member.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberRemoveResponse clone() =>
      MemberRemoveResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberRemoveResponse copyWith(void Function(MemberRemoveResponse) updates) =>
      super.copyWith((message) => updates(message as MemberRemoveResponse))
          as MemberRemoveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberRemoveResponse create() => MemberRemoveResponse._();
  MemberRemoveResponse createEmptyInstance() => create();
  static $pb.PbList<MemberRemoveResponse> createRepeated() =>
      $pb.PbList<MemberRemoveResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberRemoveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberRemoveResponse>(create);
  static MemberRemoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// members is a list of all members after removing the member.
  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class MemberUpdateRequest extends $pb.GeneratedMessage {
  factory MemberUpdateRequest({
    $fixnum.Int64? iD,
    $core.Iterable<$core.String>? peerURLs,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (peerURLs != null) {
      $result.peerURLs.addAll(peerURLs);
    }
    return $result;
  }
  MemberUpdateRequest._() : super();
  factory MemberUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'ID', $pb.PbFieldType.OU6,
        protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(2, _omitFieldNames ? '' : 'peerURLs', protoName: 'peerURLs')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberUpdateRequest clone() => MemberUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberUpdateRequest copyWith(void Function(MemberUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as MemberUpdateRequest))
          as MemberUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberUpdateRequest create() => MemberUpdateRequest._();
  MemberUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<MemberUpdateRequest> createRepeated() =>
      $pb.PbList<MemberUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberUpdateRequest>(create);
  static MemberUpdateRequest? _defaultInstance;

  /// ID is the member ID of the member to update.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  /// peerURLs is the new list of URLs the member will use to communicate with the cluster.
  @$pb.TagNumber(2)
  $core.List<$core.String> get peerURLs => $_getList(1);
}

class MemberUpdateResponse extends $pb.GeneratedMessage {
  factory MemberUpdateResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  MemberUpdateResponse._() : super();
  factory MemberUpdateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberUpdateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberUpdateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<Member>(2, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: Member.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberUpdateResponse clone() =>
      MemberUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberUpdateResponse copyWith(void Function(MemberUpdateResponse) updates) =>
      super.copyWith((message) => updates(message as MemberUpdateResponse))
          as MemberUpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberUpdateResponse create() => MemberUpdateResponse._();
  MemberUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<MemberUpdateResponse> createRepeated() =>
      $pb.PbList<MemberUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberUpdateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberUpdateResponse>(create);
  static MemberUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// members is a list of all members after updating the member.
  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class MemberListRequest extends $pb.GeneratedMessage {
  factory MemberListRequest({
    $core.bool? linearizable,
  }) {
    final $result = create();
    if (linearizable != null) {
      $result.linearizable = linearizable;
    }
    return $result;
  }
  MemberListRequest._() : super();
  factory MemberListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberListRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'linearizable')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberListRequest clone() => MemberListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberListRequest copyWith(void Function(MemberListRequest) updates) =>
      super.copyWith((message) => updates(message as MemberListRequest))
          as MemberListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberListRequest create() => MemberListRequest._();
  MemberListRequest createEmptyInstance() => create();
  static $pb.PbList<MemberListRequest> createRepeated() =>
      $pb.PbList<MemberListRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberListRequest>(create);
  static MemberListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get linearizable => $_getBF(0);
  @$pb.TagNumber(1)
  set linearizable($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLinearizable() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinearizable() => clearField(1);
}

class MemberListResponse extends $pb.GeneratedMessage {
  factory MemberListResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  MemberListResponse._() : super();
  factory MemberListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberListResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<Member>(2, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: Member.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberListResponse clone() => MemberListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberListResponse copyWith(void Function(MemberListResponse) updates) =>
      super.copyWith((message) => updates(message as MemberListResponse))
          as MemberListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberListResponse create() => MemberListResponse._();
  MemberListResponse createEmptyInstance() => create();
  static $pb.PbList<MemberListResponse> createRepeated() =>
      $pb.PbList<MemberListResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberListResponse>(create);
  static MemberListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// members is a list of all members associated with the cluster.
  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class MemberPromoteRequest extends $pb.GeneratedMessage {
  factory MemberPromoteRequest({
    $fixnum.Int64? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  MemberPromoteRequest._() : super();
  factory MemberPromoteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberPromoteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberPromoteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'ID', $pb.PbFieldType.OU6,
        protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberPromoteRequest clone() =>
      MemberPromoteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberPromoteRequest copyWith(void Function(MemberPromoteRequest) updates) =>
      super.copyWith((message) => updates(message as MemberPromoteRequest))
          as MemberPromoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberPromoteRequest create() => MemberPromoteRequest._();
  MemberPromoteRequest createEmptyInstance() => create();
  static $pb.PbList<MemberPromoteRequest> createRepeated() =>
      $pb.PbList<MemberPromoteRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberPromoteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberPromoteRequest>(create);
  static MemberPromoteRequest? _defaultInstance;

  /// ID is the member ID of the member to promote.
  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class MemberPromoteResponse extends $pb.GeneratedMessage {
  factory MemberPromoteResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  MemberPromoteResponse._() : super();
  factory MemberPromoteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemberPromoteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberPromoteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<Member>(2, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: Member.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemberPromoteResponse clone() =>
      MemberPromoteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemberPromoteResponse copyWith(
          void Function(MemberPromoteResponse) updates) =>
      super.copyWith((message) => updates(message as MemberPromoteResponse))
          as MemberPromoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberPromoteResponse create() => MemberPromoteResponse._();
  MemberPromoteResponse createEmptyInstance() => create();
  static $pb.PbList<MemberPromoteResponse> createRepeated() =>
      $pb.PbList<MemberPromoteResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberPromoteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberPromoteResponse>(create);
  static MemberPromoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// members is a list of all members after promoting the member.
  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class DefragmentRequest extends $pb.GeneratedMessage {
  factory DefragmentRequest() => create();
  DefragmentRequest._() : super();
  factory DefragmentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DefragmentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DefragmentRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DefragmentRequest clone() => DefragmentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DefragmentRequest copyWith(void Function(DefragmentRequest) updates) =>
      super.copyWith((message) => updates(message as DefragmentRequest))
          as DefragmentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DefragmentRequest create() => DefragmentRequest._();
  DefragmentRequest createEmptyInstance() => create();
  static $pb.PbList<DefragmentRequest> createRepeated() =>
      $pb.PbList<DefragmentRequest>();
  @$core.pragma('dart2js:noInline')
  static DefragmentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DefragmentRequest>(create);
  static DefragmentRequest? _defaultInstance;
}

class DefragmentResponse extends $pb.GeneratedMessage {
  factory DefragmentResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  DefragmentResponse._() : super();
  factory DefragmentResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DefragmentResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DefragmentResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DefragmentResponse clone() => DefragmentResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DefragmentResponse copyWith(void Function(DefragmentResponse) updates) =>
      super.copyWith((message) => updates(message as DefragmentResponse))
          as DefragmentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DefragmentResponse create() => DefragmentResponse._();
  DefragmentResponse createEmptyInstance() => create();
  static $pb.PbList<DefragmentResponse> createRepeated() =>
      $pb.PbList<DefragmentResponse>();
  @$core.pragma('dart2js:noInline')
  static DefragmentResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DefragmentResponse>(create);
  static DefragmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class MoveLeaderRequest extends $pb.GeneratedMessage {
  factory MoveLeaderRequest({
    $fixnum.Int64? targetID,
  }) {
    final $result = create();
    if (targetID != null) {
      $result.targetID = targetID;
    }
    return $result;
  }
  MoveLeaderRequest._() : super();
  factory MoveLeaderRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MoveLeaderRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MoveLeaderRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'targetID', $pb.PbFieldType.OU6,
        protoName: 'targetID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MoveLeaderRequest clone() => MoveLeaderRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MoveLeaderRequest copyWith(void Function(MoveLeaderRequest) updates) =>
      super.copyWith((message) => updates(message as MoveLeaderRequest))
          as MoveLeaderRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveLeaderRequest create() => MoveLeaderRequest._();
  MoveLeaderRequest createEmptyInstance() => create();
  static $pb.PbList<MoveLeaderRequest> createRepeated() =>
      $pb.PbList<MoveLeaderRequest>();
  @$core.pragma('dart2js:noInline')
  static MoveLeaderRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MoveLeaderRequest>(create);
  static MoveLeaderRequest? _defaultInstance;

  /// targetID is the node ID for the new leader.
  @$pb.TagNumber(1)
  $fixnum.Int64 get targetID => $_getI64(0);
  @$pb.TagNumber(1)
  set targetID($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTargetID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetID() => clearField(1);
}

class MoveLeaderResponse extends $pb.GeneratedMessage {
  factory MoveLeaderResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  MoveLeaderResponse._() : super();
  factory MoveLeaderResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MoveLeaderResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MoveLeaderResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MoveLeaderResponse clone() => MoveLeaderResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MoveLeaderResponse copyWith(void Function(MoveLeaderResponse) updates) =>
      super.copyWith((message) => updates(message as MoveLeaderResponse))
          as MoveLeaderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveLeaderResponse create() => MoveLeaderResponse._();
  MoveLeaderResponse createEmptyInstance() => create();
  static $pb.PbList<MoveLeaderResponse> createRepeated() =>
      $pb.PbList<MoveLeaderResponse>();
  @$core.pragma('dart2js:noInline')
  static MoveLeaderResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MoveLeaderResponse>(create);
  static MoveLeaderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AlarmRequest extends $pb.GeneratedMessage {
  factory AlarmRequest({
    AlarmRequest_AlarmAction? action,
    $fixnum.Int64? memberID,
    AlarmType? alarm,
  }) {
    final $result = create();
    if (action != null) {
      $result.action = action;
    }
    if (memberID != null) {
      $result.memberID = memberID;
    }
    if (alarm != null) {
      $result.alarm = alarm;
    }
    return $result;
  }
  AlarmRequest._() : super();
  factory AlarmRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AlarmRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlarmRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..e<AlarmRequest_AlarmAction>(
        1, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE,
        defaultOrMaker: AlarmRequest_AlarmAction.GET,
        valueOf: AlarmRequest_AlarmAction.valueOf,
        enumValues: AlarmRequest_AlarmAction.values)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'memberID', $pb.PbFieldType.OU6,
        protoName: 'memberID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<AlarmType>(3, _omitFieldNames ? '' : 'alarm', $pb.PbFieldType.OE,
        defaultOrMaker: AlarmType.NONE,
        valueOf: AlarmType.valueOf,
        enumValues: AlarmType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AlarmRequest clone() => AlarmRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AlarmRequest copyWith(void Function(AlarmRequest) updates) =>
      super.copyWith((message) => updates(message as AlarmRequest))
          as AlarmRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlarmRequest create() => AlarmRequest._();
  AlarmRequest createEmptyInstance() => create();
  static $pb.PbList<AlarmRequest> createRepeated() =>
      $pb.PbList<AlarmRequest>();
  @$core.pragma('dart2js:noInline')
  static AlarmRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlarmRequest>(create);
  static AlarmRequest? _defaultInstance;

  /// action is the kind of alarm request to issue. The action
  /// may GET alarm statuses, ACTIVATE an alarm, or DEACTIVATE a
  /// raised alarm.
  @$pb.TagNumber(1)
  AlarmRequest_AlarmAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(AlarmRequest_AlarmAction v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  /// memberID is the ID of the member associated with the alarm. If memberID is 0, the
  /// alarm request covers all members.
  @$pb.TagNumber(2)
  $fixnum.Int64 get memberID => $_getI64(1);
  @$pb.TagNumber(2)
  set memberID($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMemberID() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberID() => clearField(2);

  /// alarm is the type of alarm to consider for this request.
  @$pb.TagNumber(3)
  AlarmType get alarm => $_getN(2);
  @$pb.TagNumber(3)
  set alarm(AlarmType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAlarm() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlarm() => clearField(3);
}

class AlarmMember extends $pb.GeneratedMessage {
  factory AlarmMember({
    $fixnum.Int64? memberID,
    AlarmType? alarm,
  }) {
    final $result = create();
    if (memberID != null) {
      $result.memberID = memberID;
    }
    if (alarm != null) {
      $result.alarm = alarm;
    }
    return $result;
  }
  AlarmMember._() : super();
  factory AlarmMember.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AlarmMember.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlarmMember',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'memberID', $pb.PbFieldType.OU6,
        protoName: 'memberID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<AlarmType>(2, _omitFieldNames ? '' : 'alarm', $pb.PbFieldType.OE,
        defaultOrMaker: AlarmType.NONE,
        valueOf: AlarmType.valueOf,
        enumValues: AlarmType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AlarmMember clone() => AlarmMember()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AlarmMember copyWith(void Function(AlarmMember) updates) =>
      super.copyWith((message) => updates(message as AlarmMember))
          as AlarmMember;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlarmMember create() => AlarmMember._();
  AlarmMember createEmptyInstance() => create();
  static $pb.PbList<AlarmMember> createRepeated() => $pb.PbList<AlarmMember>();
  @$core.pragma('dart2js:noInline')
  static AlarmMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlarmMember>(create);
  static AlarmMember? _defaultInstance;

  /// memberID is the ID of the member associated with the raised alarm.
  @$pb.TagNumber(1)
  $fixnum.Int64 get memberID => $_getI64(0);
  @$pb.TagNumber(1)
  set memberID($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMemberID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberID() => clearField(1);

  /// alarm is the type of alarm which has been raised.
  @$pb.TagNumber(2)
  AlarmType get alarm => $_getN(1);
  @$pb.TagNumber(2)
  set alarm(AlarmType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAlarm() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlarm() => clearField(2);
}

class AlarmResponse extends $pb.GeneratedMessage {
  factory AlarmResponse({
    ResponseHeader? header,
    $core.Iterable<AlarmMember>? alarms,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (alarms != null) {
      $result.alarms.addAll(alarms);
    }
    return $result;
  }
  AlarmResponse._() : super();
  factory AlarmResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AlarmResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlarmResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<AlarmMember>(2, _omitFieldNames ? '' : 'alarms', $pb.PbFieldType.PM,
        subBuilder: AlarmMember.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AlarmResponse clone() => AlarmResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AlarmResponse copyWith(void Function(AlarmResponse) updates) =>
      super.copyWith((message) => updates(message as AlarmResponse))
          as AlarmResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlarmResponse create() => AlarmResponse._();
  AlarmResponse createEmptyInstance() => create();
  static $pb.PbList<AlarmResponse> createRepeated() =>
      $pb.PbList<AlarmResponse>();
  @$core.pragma('dart2js:noInline')
  static AlarmResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlarmResponse>(create);
  static AlarmResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// alarms is a list of alarms associated with the alarm request.
  @$pb.TagNumber(2)
  $core.List<AlarmMember> get alarms => $_getList(1);
}

class DowngradeRequest extends $pb.GeneratedMessage {
  factory DowngradeRequest({
    DowngradeRequest_DowngradeAction? action,
    $core.String? version,
  }) {
    final $result = create();
    if (action != null) {
      $result.action = action;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  DowngradeRequest._() : super();
  factory DowngradeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DowngradeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DowngradeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..e<DowngradeRequest_DowngradeAction>(
        1, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE,
        defaultOrMaker: DowngradeRequest_DowngradeAction.VALIDATE,
        valueOf: DowngradeRequest_DowngradeAction.valueOf,
        enumValues: DowngradeRequest_DowngradeAction.values)
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DowngradeRequest clone() => DowngradeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DowngradeRequest copyWith(void Function(DowngradeRequest) updates) =>
      super.copyWith((message) => updates(message as DowngradeRequest))
          as DowngradeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DowngradeRequest create() => DowngradeRequest._();
  DowngradeRequest createEmptyInstance() => create();
  static $pb.PbList<DowngradeRequest> createRepeated() =>
      $pb.PbList<DowngradeRequest>();
  @$core.pragma('dart2js:noInline')
  static DowngradeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DowngradeRequest>(create);
  static DowngradeRequest? _defaultInstance;

  /// action is the kind of downgrade request to issue. The action may
  /// VALIDATE the target version, DOWNGRADE the cluster version,
  /// or CANCEL the current downgrading job.
  @$pb.TagNumber(1)
  DowngradeRequest_DowngradeAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(DowngradeRequest_DowngradeAction v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  /// version is the target version to downgrade.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class DowngradeResponse extends $pb.GeneratedMessage {
  factory DowngradeResponse({
    ResponseHeader? header,
    $core.String? version,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  DowngradeResponse._() : super();
  factory DowngradeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DowngradeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DowngradeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DowngradeResponse clone() => DowngradeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DowngradeResponse copyWith(void Function(DowngradeResponse) updates) =>
      super.copyWith((message) => updates(message as DowngradeResponse))
          as DowngradeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DowngradeResponse create() => DowngradeResponse._();
  DowngradeResponse createEmptyInstance() => create();
  static $pb.PbList<DowngradeResponse> createRepeated() =>
      $pb.PbList<DowngradeResponse>();
  @$core.pragma('dart2js:noInline')
  static DowngradeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DowngradeResponse>(create);
  static DowngradeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// version is the current cluster version.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class StatusRequest extends $pb.GeneratedMessage {
  factory StatusRequest() => create();
  StatusRequest._() : super();
  factory StatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StatusRequest clone() => StatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StatusRequest copyWith(void Function(StatusRequest) updates) =>
      super.copyWith((message) => updates(message as StatusRequest))
          as StatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusRequest create() => StatusRequest._();
  StatusRequest createEmptyInstance() => create();
  static $pb.PbList<StatusRequest> createRepeated() =>
      $pb.PbList<StatusRequest>();
  @$core.pragma('dart2js:noInline')
  static StatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusRequest>(create);
  static StatusRequest? _defaultInstance;
}

class StatusResponse extends $pb.GeneratedMessage {
  factory StatusResponse({
    ResponseHeader? header,
    $core.String? version,
    $fixnum.Int64? dbSize,
    $fixnum.Int64? leader,
    $fixnum.Int64? raftIndex,
    $fixnum.Int64? raftTerm,
    $fixnum.Int64? raftAppliedIndex,
    $core.Iterable<$core.String>? errors,
    $fixnum.Int64? dbSizeInUse,
    $core.bool? isLearner,
    $core.String? storageVersion,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (version != null) {
      $result.version = version;
    }
    if (dbSize != null) {
      $result.dbSize = dbSize;
    }
    if (leader != null) {
      $result.leader = leader;
    }
    if (raftIndex != null) {
      $result.raftIndex = raftIndex;
    }
    if (raftTerm != null) {
      $result.raftTerm = raftTerm;
    }
    if (raftAppliedIndex != null) {
      $result.raftAppliedIndex = raftAppliedIndex;
    }
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    if (dbSizeInUse != null) {
      $result.dbSizeInUse = dbSizeInUse;
    }
    if (isLearner != null) {
      $result.isLearner = isLearner;
    }
    if (storageVersion != null) {
      $result.storageVersion = storageVersion;
    }
    return $result;
  }
  StatusResponse._() : super();
  factory StatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aInt64(3, _omitFieldNames ? '' : 'dbSize', protoName: 'dbSize')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'leader', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'raftIndex', $pb.PbFieldType.OU6,
        protoName: 'raftIndex', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'raftTerm', $pb.PbFieldType.OU6,
        protoName: 'raftTerm', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'raftAppliedIndex', $pb.PbFieldType.OU6,
        protoName: 'raftAppliedIndex', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(8, _omitFieldNames ? '' : 'errors')
    ..aInt64(9, _omitFieldNames ? '' : 'dbSizeInUse', protoName: 'dbSizeInUse')
    ..aOB(10, _omitFieldNames ? '' : 'isLearner', protoName: 'isLearner')
    ..aOS(11, _omitFieldNames ? '' : 'storageVersion',
        protoName: 'storageVersion')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StatusResponse clone() => StatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StatusResponse copyWith(void Function(StatusResponse) updates) =>
      super.copyWith((message) => updates(message as StatusResponse))
          as StatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  StatusResponse createEmptyInstance() => create();
  static $pb.PbList<StatusResponse> createRepeated() =>
      $pb.PbList<StatusResponse>();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// version is the cluster protocol version used by the responding member.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  /// dbSize is the size of the backend database physically allocated, in bytes, of the responding member.
  @$pb.TagNumber(3)
  $fixnum.Int64 get dbSize => $_getI64(2);
  @$pb.TagNumber(3)
  set dbSize($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDbSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearDbSize() => clearField(3);

  /// leader is the member ID which the responding member believes is the current leader.
  @$pb.TagNumber(4)
  $fixnum.Int64 get leader => $_getI64(3);
  @$pb.TagNumber(4)
  set leader($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLeader() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeader() => clearField(4);

  /// raftIndex is the current raft committed index of the responding member.
  @$pb.TagNumber(5)
  $fixnum.Int64 get raftIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set raftIndex($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRaftIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearRaftIndex() => clearField(5);

  /// raftTerm is the current raft term of the responding member.
  @$pb.TagNumber(6)
  $fixnum.Int64 get raftTerm => $_getI64(5);
  @$pb.TagNumber(6)
  set raftTerm($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRaftTerm() => $_has(5);
  @$pb.TagNumber(6)
  void clearRaftTerm() => clearField(6);

  /// raftAppliedIndex is the current raft applied index of the responding member.
  @$pb.TagNumber(7)
  $fixnum.Int64 get raftAppliedIndex => $_getI64(6);
  @$pb.TagNumber(7)
  set raftAppliedIndex($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRaftAppliedIndex() => $_has(6);
  @$pb.TagNumber(7)
  void clearRaftAppliedIndex() => clearField(7);

  /// errors contains alarm/health information and status.
  @$pb.TagNumber(8)
  $core.List<$core.String> get errors => $_getList(7);

  /// dbSizeInUse is the size of the backend database logically in use, in bytes, of the responding member.
  @$pb.TagNumber(9)
  $fixnum.Int64 get dbSizeInUse => $_getI64(8);
  @$pb.TagNumber(9)
  set dbSizeInUse($fixnum.Int64 v) {
    $_setInt64(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasDbSizeInUse() => $_has(8);
  @$pb.TagNumber(9)
  void clearDbSizeInUse() => clearField(9);

  /// isLearner indicates if the member is raft learner.
  @$pb.TagNumber(10)
  $core.bool get isLearner => $_getBF(9);
  @$pb.TagNumber(10)
  set isLearner($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIsLearner() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsLearner() => clearField(10);

  /// storageVersion is the version of the db file. It might be get updated with delay in relationship to the target cluster version.
  @$pb.TagNumber(11)
  $core.String get storageVersion => $_getSZ(10);
  @$pb.TagNumber(11)
  set storageVersion($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasStorageVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearStorageVersion() => clearField(11);
}

class AuthEnableRequest extends $pb.GeneratedMessage {
  factory AuthEnableRequest() => create();
  AuthEnableRequest._() : super();
  factory AuthEnableRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthEnableRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthEnableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthEnableRequest clone() => AuthEnableRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthEnableRequest copyWith(void Function(AuthEnableRequest) updates) =>
      super.copyWith((message) => updates(message as AuthEnableRequest))
          as AuthEnableRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthEnableRequest create() => AuthEnableRequest._();
  AuthEnableRequest createEmptyInstance() => create();
  static $pb.PbList<AuthEnableRequest> createRepeated() =>
      $pb.PbList<AuthEnableRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthEnableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthEnableRequest>(create);
  static AuthEnableRequest? _defaultInstance;
}

class AuthDisableRequest extends $pb.GeneratedMessage {
  factory AuthDisableRequest() => create();
  AuthDisableRequest._() : super();
  factory AuthDisableRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthDisableRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthDisableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthDisableRequest clone() => AuthDisableRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthDisableRequest copyWith(void Function(AuthDisableRequest) updates) =>
      super.copyWith((message) => updates(message as AuthDisableRequest))
          as AuthDisableRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthDisableRequest create() => AuthDisableRequest._();
  AuthDisableRequest createEmptyInstance() => create();
  static $pb.PbList<AuthDisableRequest> createRepeated() =>
      $pb.PbList<AuthDisableRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthDisableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthDisableRequest>(create);
  static AuthDisableRequest? _defaultInstance;
}

class AuthStatusRequest extends $pb.GeneratedMessage {
  factory AuthStatusRequest() => create();
  AuthStatusRequest._() : super();
  factory AuthStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthStatusRequest clone() => AuthStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthStatusRequest copyWith(void Function(AuthStatusRequest) updates) =>
      super.copyWith((message) => updates(message as AuthStatusRequest))
          as AuthStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthStatusRequest create() => AuthStatusRequest._();
  AuthStatusRequest createEmptyInstance() => create();
  static $pb.PbList<AuthStatusRequest> createRepeated() =>
      $pb.PbList<AuthStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthStatusRequest>(create);
  static AuthStatusRequest? _defaultInstance;
}

class AuthenticateRequest extends $pb.GeneratedMessage {
  factory AuthenticateRequest({
    $core.String? name,
    $core.String? password,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  AuthenticateRequest._() : super();
  factory AuthenticateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateRequest clone() => AuthenticateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateRequest copyWith(void Function(AuthenticateRequest) updates) =>
      super.copyWith((message) => updates(message as AuthenticateRequest))
          as AuthenticateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest create() => AuthenticateRequest._();
  AuthenticateRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateRequest> createRepeated() =>
      $pb.PbList<AuthenticateRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateRequest>(create);
  static AuthenticateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class AuthUserAddRequest extends $pb.GeneratedMessage {
  factory AuthUserAddRequest({
    $core.String? name,
    $core.String? password,
    $2.UserAddOptions? options,
    $core.String? hashedPassword,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (password != null) {
      $result.password = password;
    }
    if (options != null) {
      $result.options = options;
    }
    if (hashedPassword != null) {
      $result.hashedPassword = hashedPassword;
    }
    return $result;
  }
  AuthUserAddRequest._() : super();
  factory AuthUserAddRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserAddRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserAddRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOM<$2.UserAddOptions>(3, _omitFieldNames ? '' : 'options',
        subBuilder: $2.UserAddOptions.create)
    ..aOS(4, _omitFieldNames ? '' : 'hashedPassword',
        protoName: 'hashedPassword')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserAddRequest clone() => AuthUserAddRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserAddRequest copyWith(void Function(AuthUserAddRequest) updates) =>
      super.copyWith((message) => updates(message as AuthUserAddRequest))
          as AuthUserAddRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserAddRequest create() => AuthUserAddRequest._();
  AuthUserAddRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserAddRequest> createRepeated() =>
      $pb.PbList<AuthUserAddRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserAddRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserAddRequest>(create);
  static AuthUserAddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $2.UserAddOptions get options => $_getN(2);
  @$pb.TagNumber(3)
  set options($2.UserAddOptions v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptions() => clearField(3);
  @$pb.TagNumber(3)
  $2.UserAddOptions ensureOptions() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get hashedPassword => $_getSZ(3);
  @$pb.TagNumber(4)
  set hashedPassword($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHashedPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearHashedPassword() => clearField(4);
}

class AuthUserGetRequest extends $pb.GeneratedMessage {
  factory AuthUserGetRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AuthUserGetRequest._() : super();
  factory AuthUserGetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserGetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserGetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserGetRequest clone() => AuthUserGetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserGetRequest copyWith(void Function(AuthUserGetRequest) updates) =>
      super.copyWith((message) => updates(message as AuthUserGetRequest))
          as AuthUserGetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserGetRequest create() => AuthUserGetRequest._();
  AuthUserGetRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserGetRequest> createRepeated() =>
      $pb.PbList<AuthUserGetRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserGetRequest>(create);
  static AuthUserGetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class AuthUserDeleteRequest extends $pb.GeneratedMessage {
  factory AuthUserDeleteRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AuthUserDeleteRequest._() : super();
  factory AuthUserDeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserDeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserDeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserDeleteRequest clone() =>
      AuthUserDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserDeleteRequest copyWith(
          void Function(AuthUserDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as AuthUserDeleteRequest))
          as AuthUserDeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteRequest create() => AuthUserDeleteRequest._();
  AuthUserDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserDeleteRequest> createRepeated() =>
      $pb.PbList<AuthUserDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserDeleteRequest>(create);
  static AuthUserDeleteRequest? _defaultInstance;

  /// name is the name of the user to delete.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class AuthUserChangePasswordRequest extends $pb.GeneratedMessage {
  factory AuthUserChangePasswordRequest({
    $core.String? name,
    $core.String? password,
    $core.String? hashedPassword,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (password != null) {
      $result.password = password;
    }
    if (hashedPassword != null) {
      $result.hashedPassword = hashedPassword;
    }
    return $result;
  }
  AuthUserChangePasswordRequest._() : super();
  factory AuthUserChangePasswordRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserChangePasswordRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserChangePasswordRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'hashedPassword',
        protoName: 'hashedPassword')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserChangePasswordRequest clone() =>
      AuthUserChangePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserChangePasswordRequest copyWith(
          void Function(AuthUserChangePasswordRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AuthUserChangePasswordRequest))
          as AuthUserChangePasswordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordRequest create() =>
      AuthUserChangePasswordRequest._();
  AuthUserChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserChangePasswordRequest> createRepeated() =>
      $pb.PbList<AuthUserChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserChangePasswordRequest>(create);
  static AuthUserChangePasswordRequest? _defaultInstance;

  /// name is the name of the user whose password is being changed.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// password is the new password for the user. Note that this field will be removed in the API layer.
  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  /// hashedPassword is the new password for the user. Note that this field will be initialized in the API layer.
  @$pb.TagNumber(3)
  $core.String get hashedPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set hashedPassword($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHashedPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearHashedPassword() => clearField(3);
}

class AuthUserGrantRoleRequest extends $pb.GeneratedMessage {
  factory AuthUserGrantRoleRequest({
    $core.String? user,
    $core.String? role,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (role != null) {
      $result.role = role;
    }
    return $result;
  }
  AuthUserGrantRoleRequest._() : super();
  factory AuthUserGrantRoleRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserGrantRoleRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserGrantRoleRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'user')
    ..aOS(2, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserGrantRoleRequest clone() =>
      AuthUserGrantRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserGrantRoleRequest copyWith(
          void Function(AuthUserGrantRoleRequest) updates) =>
      super.copyWith((message) => updates(message as AuthUserGrantRoleRequest))
          as AuthUserGrantRoleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleRequest create() => AuthUserGrantRoleRequest._();
  AuthUserGrantRoleRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserGrantRoleRequest> createRepeated() =>
      $pb.PbList<AuthUserGrantRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserGrantRoleRequest>(create);
  static AuthUserGrantRoleRequest? _defaultInstance;

  /// user is the name of the user which should be granted a given role.
  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  /// role is the name of the role to grant to the user.
  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);
}

class AuthUserRevokeRoleRequest extends $pb.GeneratedMessage {
  factory AuthUserRevokeRoleRequest({
    $core.String? name,
    $core.String? role,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (role != null) {
      $result.role = role;
    }
    return $result;
  }
  AuthUserRevokeRoleRequest._() : super();
  factory AuthUserRevokeRoleRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserRevokeRoleRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserRevokeRoleRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserRevokeRoleRequest clone() =>
      AuthUserRevokeRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserRevokeRoleRequest copyWith(
          void Function(AuthUserRevokeRoleRequest) updates) =>
      super.copyWith((message) => updates(message as AuthUserRevokeRoleRequest))
          as AuthUserRevokeRoleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleRequest create() => AuthUserRevokeRoleRequest._();
  AuthUserRevokeRoleRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserRevokeRoleRequest> createRepeated() =>
      $pb.PbList<AuthUserRevokeRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserRevokeRoleRequest>(create);
  static AuthUserRevokeRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);
}

class AuthRoleAddRequest extends $pb.GeneratedMessage {
  factory AuthRoleAddRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AuthRoleAddRequest._() : super();
  factory AuthRoleAddRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleAddRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleAddRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleAddRequest clone() => AuthRoleAddRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleAddRequest copyWith(void Function(AuthRoleAddRequest) updates) =>
      super.copyWith((message) => updates(message as AuthRoleAddRequest))
          as AuthRoleAddRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleAddRequest create() => AuthRoleAddRequest._();
  AuthRoleAddRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleAddRequest> createRepeated() =>
      $pb.PbList<AuthRoleAddRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleAddRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleAddRequest>(create);
  static AuthRoleAddRequest? _defaultInstance;

  /// name is the name of the role to add to the authentication system.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class AuthRoleGetRequest extends $pb.GeneratedMessage {
  factory AuthRoleGetRequest({
    $core.String? role,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    return $result;
  }
  AuthRoleGetRequest._() : super();
  factory AuthRoleGetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleGetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleGetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleGetRequest clone() => AuthRoleGetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleGetRequest copyWith(void Function(AuthRoleGetRequest) updates) =>
      super.copyWith((message) => updates(message as AuthRoleGetRequest))
          as AuthRoleGetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleGetRequest create() => AuthRoleGetRequest._();
  AuthRoleGetRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGetRequest> createRepeated() =>
      $pb.PbList<AuthRoleGetRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleGetRequest>(create);
  static AuthRoleGetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);
}

class AuthUserListRequest extends $pb.GeneratedMessage {
  factory AuthUserListRequest() => create();
  AuthUserListRequest._() : super();
  factory AuthUserListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserListRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserListRequest clone() => AuthUserListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserListRequest copyWith(void Function(AuthUserListRequest) updates) =>
      super.copyWith((message) => updates(message as AuthUserListRequest))
          as AuthUserListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserListRequest create() => AuthUserListRequest._();
  AuthUserListRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserListRequest> createRepeated() =>
      $pb.PbList<AuthUserListRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserListRequest>(create);
  static AuthUserListRequest? _defaultInstance;
}

class AuthRoleListRequest extends $pb.GeneratedMessage {
  factory AuthRoleListRequest() => create();
  AuthRoleListRequest._() : super();
  factory AuthRoleListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleListRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleListRequest clone() => AuthRoleListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleListRequest copyWith(void Function(AuthRoleListRequest) updates) =>
      super.copyWith((message) => updates(message as AuthRoleListRequest))
          as AuthRoleListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleListRequest create() => AuthRoleListRequest._();
  AuthRoleListRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleListRequest> createRepeated() =>
      $pb.PbList<AuthRoleListRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleListRequest>(create);
  static AuthRoleListRequest? _defaultInstance;
}

class AuthRoleDeleteRequest extends $pb.GeneratedMessage {
  factory AuthRoleDeleteRequest({
    $core.String? role,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    return $result;
  }
  AuthRoleDeleteRequest._() : super();
  factory AuthRoleDeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleDeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleDeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleDeleteRequest clone() =>
      AuthRoleDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleDeleteRequest copyWith(
          void Function(AuthRoleDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as AuthRoleDeleteRequest))
          as AuthRoleDeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteRequest create() => AuthRoleDeleteRequest._();
  AuthRoleDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleDeleteRequest> createRepeated() =>
      $pb.PbList<AuthRoleDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleDeleteRequest>(create);
  static AuthRoleDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);
}

class AuthRoleGrantPermissionRequest extends $pb.GeneratedMessage {
  factory AuthRoleGrantPermissionRequest({
    $core.String? name,
    $2.Permission? perm,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (perm != null) {
      $result.perm = perm;
    }
    return $result;
  }
  AuthRoleGrantPermissionRequest._() : super();
  factory AuthRoleGrantPermissionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleGrantPermissionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleGrantPermissionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$2.Permission>(2, _omitFieldNames ? '' : 'perm',
        subBuilder: $2.Permission.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleGrantPermissionRequest clone() =>
      AuthRoleGrantPermissionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleGrantPermissionRequest copyWith(
          void Function(AuthRoleGrantPermissionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AuthRoleGrantPermissionRequest))
          as AuthRoleGrantPermissionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionRequest create() =>
      AuthRoleGrantPermissionRequest._();
  AuthRoleGrantPermissionRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGrantPermissionRequest> createRepeated() =>
      $pb.PbList<AuthRoleGrantPermissionRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleGrantPermissionRequest>(create);
  static AuthRoleGrantPermissionRequest? _defaultInstance;

  /// name is the name of the role which will be granted the permission.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// perm is the permission to grant to the role.
  @$pb.TagNumber(2)
  $2.Permission get perm => $_getN(1);
  @$pb.TagNumber(2)
  set perm($2.Permission v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPerm() => $_has(1);
  @$pb.TagNumber(2)
  void clearPerm() => clearField(2);
  @$pb.TagNumber(2)
  $2.Permission ensurePerm() => $_ensure(1);
}

class AuthRoleRevokePermissionRequest extends $pb.GeneratedMessage {
  factory AuthRoleRevokePermissionRequest({
    $core.String? role,
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (key != null) {
      $result.key = key;
    }
    if (rangeEnd != null) {
      $result.rangeEnd = rangeEnd;
    }
    return $result;
  }
  AuthRoleRevokePermissionRequest._() : super();
  factory AuthRoleRevokePermissionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleRevokePermissionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleRevokePermissionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'role')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleRevokePermissionRequest clone() =>
      AuthRoleRevokePermissionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleRevokePermissionRequest copyWith(
          void Function(AuthRoleRevokePermissionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AuthRoleRevokePermissionRequest))
          as AuthRoleRevokePermissionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionRequest create() =>
      AuthRoleRevokePermissionRequest._();
  AuthRoleRevokePermissionRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleRevokePermissionRequest> createRepeated() =>
      $pb.PbList<AuthRoleRevokePermissionRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleRevokePermissionRequest>(
          create);
  static AuthRoleRevokePermissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get rangeEnd => $_getN(2);
  @$pb.TagNumber(3)
  set rangeEnd($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRangeEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeEnd() => clearField(3);
}

class AuthEnableResponse extends $pb.GeneratedMessage {
  factory AuthEnableResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthEnableResponse._() : super();
  factory AuthEnableResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthEnableResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthEnableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthEnableResponse clone() => AuthEnableResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthEnableResponse copyWith(void Function(AuthEnableResponse) updates) =>
      super.copyWith((message) => updates(message as AuthEnableResponse))
          as AuthEnableResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthEnableResponse create() => AuthEnableResponse._();
  AuthEnableResponse createEmptyInstance() => create();
  static $pb.PbList<AuthEnableResponse> createRepeated() =>
      $pb.PbList<AuthEnableResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthEnableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthEnableResponse>(create);
  static AuthEnableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthDisableResponse extends $pb.GeneratedMessage {
  factory AuthDisableResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthDisableResponse._() : super();
  factory AuthDisableResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthDisableResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthDisableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthDisableResponse clone() => AuthDisableResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthDisableResponse copyWith(void Function(AuthDisableResponse) updates) =>
      super.copyWith((message) => updates(message as AuthDisableResponse))
          as AuthDisableResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthDisableResponse create() => AuthDisableResponse._();
  AuthDisableResponse createEmptyInstance() => create();
  static $pb.PbList<AuthDisableResponse> createRepeated() =>
      $pb.PbList<AuthDisableResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthDisableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthDisableResponse>(create);
  static AuthDisableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthStatusResponse extends $pb.GeneratedMessage {
  factory AuthStatusResponse({
    ResponseHeader? header,
    $core.bool? enabled,
    $fixnum.Int64? authRevision,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (authRevision != null) {
      $result.authRevision = authRevision;
    }
    return $result;
  }
  AuthStatusResponse._() : super();
  factory AuthStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOB(2, _omitFieldNames ? '' : 'enabled')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'authRevision', $pb.PbFieldType.OU6,
        protoName: 'authRevision', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthStatusResponse clone() => AuthStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthStatusResponse copyWith(void Function(AuthStatusResponse) updates) =>
      super.copyWith((message) => updates(message as AuthStatusResponse))
          as AuthStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthStatusResponse create() => AuthStatusResponse._();
  AuthStatusResponse createEmptyInstance() => create();
  static $pb.PbList<AuthStatusResponse> createRepeated() =>
      $pb.PbList<AuthStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthStatusResponse>(create);
  static AuthStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => clearField(2);

  /// authRevision is the current revision of auth store
  @$pb.TagNumber(3)
  $fixnum.Int64 get authRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set authRevision($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAuthRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthRevision() => clearField(3);
}

class AuthenticateResponse extends $pb.GeneratedMessage {
  factory AuthenticateResponse({
    ResponseHeader? header,
    $core.String? token,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  AuthenticateResponse._() : super();
  factory AuthenticateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateResponse clone() =>
      AuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateResponse copyWith(void Function(AuthenticateResponse) updates) =>
      super.copyWith((message) => updates(message as AuthenticateResponse))
          as AuthenticateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateResponse create() => AuthenticateResponse._();
  AuthenticateResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticateResponse> createRepeated() =>
      $pb.PbList<AuthenticateResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateResponse>(create);
  static AuthenticateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  /// token is an authorized token that can be used in succeeding RPCs
  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class AuthUserAddResponse extends $pb.GeneratedMessage {
  factory AuthUserAddResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthUserAddResponse._() : super();
  factory AuthUserAddResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserAddResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserAddResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserAddResponse clone() => AuthUserAddResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserAddResponse copyWith(void Function(AuthUserAddResponse) updates) =>
      super.copyWith((message) => updates(message as AuthUserAddResponse))
          as AuthUserAddResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserAddResponse create() => AuthUserAddResponse._();
  AuthUserAddResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserAddResponse> createRepeated() =>
      $pb.PbList<AuthUserAddResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserAddResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserAddResponse>(create);
  static AuthUserAddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserGetResponse extends $pb.GeneratedMessage {
  factory AuthUserGetResponse({
    ResponseHeader? header,
    $core.Iterable<$core.String>? roles,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (roles != null) {
      $result.roles.addAll(roles);
    }
    return $result;
  }
  AuthUserGetResponse._() : super();
  factory AuthUserGetResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserGetResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserGetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pPS(2, _omitFieldNames ? '' : 'roles')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserGetResponse clone() => AuthUserGetResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserGetResponse copyWith(void Function(AuthUserGetResponse) updates) =>
      super.copyWith((message) => updates(message as AuthUserGetResponse))
          as AuthUserGetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserGetResponse create() => AuthUserGetResponse._();
  AuthUserGetResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserGetResponse> createRepeated() =>
      $pb.PbList<AuthUserGetResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserGetResponse>(create);
  static AuthUserGetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get roles => $_getList(1);
}

class AuthUserDeleteResponse extends $pb.GeneratedMessage {
  factory AuthUserDeleteResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthUserDeleteResponse._() : super();
  factory AuthUserDeleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserDeleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserDeleteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserDeleteResponse clone() =>
      AuthUserDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserDeleteResponse copyWith(
          void Function(AuthUserDeleteResponse) updates) =>
      super.copyWith((message) => updates(message as AuthUserDeleteResponse))
          as AuthUserDeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteResponse create() => AuthUserDeleteResponse._();
  AuthUserDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserDeleteResponse> createRepeated() =>
      $pb.PbList<AuthUserDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserDeleteResponse>(create);
  static AuthUserDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserChangePasswordResponse extends $pb.GeneratedMessage {
  factory AuthUserChangePasswordResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthUserChangePasswordResponse._() : super();
  factory AuthUserChangePasswordResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserChangePasswordResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserChangePasswordResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserChangePasswordResponse clone() =>
      AuthUserChangePasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserChangePasswordResponse copyWith(
          void Function(AuthUserChangePasswordResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AuthUserChangePasswordResponse))
          as AuthUserChangePasswordResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordResponse create() =>
      AuthUserChangePasswordResponse._();
  AuthUserChangePasswordResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserChangePasswordResponse> createRepeated() =>
      $pb.PbList<AuthUserChangePasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserChangePasswordResponse>(create);
  static AuthUserChangePasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserGrantRoleResponse extends $pb.GeneratedMessage {
  factory AuthUserGrantRoleResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthUserGrantRoleResponse._() : super();
  factory AuthUserGrantRoleResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserGrantRoleResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserGrantRoleResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserGrantRoleResponse clone() =>
      AuthUserGrantRoleResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserGrantRoleResponse copyWith(
          void Function(AuthUserGrantRoleResponse) updates) =>
      super.copyWith((message) => updates(message as AuthUserGrantRoleResponse))
          as AuthUserGrantRoleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleResponse create() => AuthUserGrantRoleResponse._();
  AuthUserGrantRoleResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserGrantRoleResponse> createRepeated() =>
      $pb.PbList<AuthUserGrantRoleResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserGrantRoleResponse>(create);
  static AuthUserGrantRoleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserRevokeRoleResponse extends $pb.GeneratedMessage {
  factory AuthUserRevokeRoleResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthUserRevokeRoleResponse._() : super();
  factory AuthUserRevokeRoleResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserRevokeRoleResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserRevokeRoleResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserRevokeRoleResponse clone() =>
      AuthUserRevokeRoleResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserRevokeRoleResponse copyWith(
          void Function(AuthUserRevokeRoleResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AuthUserRevokeRoleResponse))
          as AuthUserRevokeRoleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleResponse create() => AuthUserRevokeRoleResponse._();
  AuthUserRevokeRoleResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserRevokeRoleResponse> createRepeated() =>
      $pb.PbList<AuthUserRevokeRoleResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserRevokeRoleResponse>(create);
  static AuthUserRevokeRoleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleAddResponse extends $pb.GeneratedMessage {
  factory AuthRoleAddResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthRoleAddResponse._() : super();
  factory AuthRoleAddResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleAddResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleAddResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleAddResponse clone() => AuthRoleAddResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleAddResponse copyWith(void Function(AuthRoleAddResponse) updates) =>
      super.copyWith((message) => updates(message as AuthRoleAddResponse))
          as AuthRoleAddResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleAddResponse create() => AuthRoleAddResponse._();
  AuthRoleAddResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleAddResponse> createRepeated() =>
      $pb.PbList<AuthRoleAddResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleAddResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleAddResponse>(create);
  static AuthRoleAddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleGetResponse extends $pb.GeneratedMessage {
  factory AuthRoleGetResponse({
    ResponseHeader? header,
    $core.Iterable<$2.Permission>? perm,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (perm != null) {
      $result.perm.addAll(perm);
    }
    return $result;
  }
  AuthRoleGetResponse._() : super();
  factory AuthRoleGetResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleGetResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleGetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pc<$2.Permission>(2, _omitFieldNames ? '' : 'perm', $pb.PbFieldType.PM,
        subBuilder: $2.Permission.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleGetResponse clone() => AuthRoleGetResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleGetResponse copyWith(void Function(AuthRoleGetResponse) updates) =>
      super.copyWith((message) => updates(message as AuthRoleGetResponse))
          as AuthRoleGetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleGetResponse create() => AuthRoleGetResponse._();
  AuthRoleGetResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGetResponse> createRepeated() =>
      $pb.PbList<AuthRoleGetResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleGetResponse>(create);
  static AuthRoleGetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$2.Permission> get perm => $_getList(1);
}

class AuthRoleListResponse extends $pb.GeneratedMessage {
  factory AuthRoleListResponse({
    ResponseHeader? header,
    $core.Iterable<$core.String>? roles,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (roles != null) {
      $result.roles.addAll(roles);
    }
    return $result;
  }
  AuthRoleListResponse._() : super();
  factory AuthRoleListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleListResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pPS(2, _omitFieldNames ? '' : 'roles')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleListResponse clone() =>
      AuthRoleListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleListResponse copyWith(void Function(AuthRoleListResponse) updates) =>
      super.copyWith((message) => updates(message as AuthRoleListResponse))
          as AuthRoleListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleListResponse create() => AuthRoleListResponse._();
  AuthRoleListResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleListResponse> createRepeated() =>
      $pb.PbList<AuthRoleListResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleListResponse>(create);
  static AuthRoleListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get roles => $_getList(1);
}

class AuthUserListResponse extends $pb.GeneratedMessage {
  factory AuthUserListResponse({
    ResponseHeader? header,
    $core.Iterable<$core.String>? users,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (users != null) {
      $result.users.addAll(users);
    }
    return $result;
  }
  AuthUserListResponse._() : super();
  factory AuthUserListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthUserListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthUserListResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..pPS(2, _omitFieldNames ? '' : 'users')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthUserListResponse clone() =>
      AuthUserListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthUserListResponse copyWith(void Function(AuthUserListResponse) updates) =>
      super.copyWith((message) => updates(message as AuthUserListResponse))
          as AuthUserListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthUserListResponse create() => AuthUserListResponse._();
  AuthUserListResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserListResponse> createRepeated() =>
      $pb.PbList<AuthUserListResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthUserListResponse>(create);
  static AuthUserListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get users => $_getList(1);
}

class AuthRoleDeleteResponse extends $pb.GeneratedMessage {
  factory AuthRoleDeleteResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthRoleDeleteResponse._() : super();
  factory AuthRoleDeleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleDeleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleDeleteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleDeleteResponse clone() =>
      AuthRoleDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleDeleteResponse copyWith(
          void Function(AuthRoleDeleteResponse) updates) =>
      super.copyWith((message) => updates(message as AuthRoleDeleteResponse))
          as AuthRoleDeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteResponse create() => AuthRoleDeleteResponse._();
  AuthRoleDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleDeleteResponse> createRepeated() =>
      $pb.PbList<AuthRoleDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleDeleteResponse>(create);
  static AuthRoleDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleGrantPermissionResponse extends $pb.GeneratedMessage {
  factory AuthRoleGrantPermissionResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthRoleGrantPermissionResponse._() : super();
  factory AuthRoleGrantPermissionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleGrantPermissionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleGrantPermissionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleGrantPermissionResponse clone() =>
      AuthRoleGrantPermissionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleGrantPermissionResponse copyWith(
          void Function(AuthRoleGrantPermissionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AuthRoleGrantPermissionResponse))
          as AuthRoleGrantPermissionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionResponse create() =>
      AuthRoleGrantPermissionResponse._();
  AuthRoleGrantPermissionResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGrantPermissionResponse> createRepeated() =>
      $pb.PbList<AuthRoleGrantPermissionResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleGrantPermissionResponse>(
          create);
  static AuthRoleGrantPermissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleRevokePermissionResponse extends $pb.GeneratedMessage {
  factory AuthRoleRevokePermissionResponse({
    ResponseHeader? header,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    return $result;
  }
  AuthRoleRevokePermissionResponse._() : super();
  factory AuthRoleRevokePermissionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthRoleRevokePermissionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRoleRevokePermissionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'etcdserverpb'),
      createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, _omitFieldNames ? '' : 'header',
        subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthRoleRevokePermissionResponse clone() =>
      AuthRoleRevokePermissionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthRoleRevokePermissionResponse copyWith(
          void Function(AuthRoleRevokePermissionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AuthRoleRevokePermissionResponse))
          as AuthRoleRevokePermissionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionResponse create() =>
      AuthRoleRevokePermissionResponse._();
  AuthRoleRevokePermissionResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleRevokePermissionResponse> createRepeated() =>
      $pb.PbList<AuthRoleRevokePermissionResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRoleRevokePermissionResponse>(
          create);
  static AuthRoleRevokePermissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
