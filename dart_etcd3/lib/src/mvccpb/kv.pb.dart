//
//  Generated code. Do not modify.
//  source: etcd/api/mvccpb/kv.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'kv.pbenum.dart';

export 'kv.pbenum.dart';

class KeyValue extends $pb.GeneratedMessage {
  factory KeyValue({
    $core.List<$core.int>? key,
    $fixnum.Int64? createRevision,
    $fixnum.Int64? modRevision,
    $fixnum.Int64? version,
    $core.List<$core.int>? value,
    $fixnum.Int64? lease,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (createRevision != null) {
      $result.createRevision = createRevision;
    }
    if (modRevision != null) {
      $result.modRevision = modRevision;
    }
    if (version != null) {
      $result.version = version;
    }
    if (value != null) {
      $result.value = value;
    }
    if (lease != null) {
      $result.lease = lease;
    }
    return $result;
  }
  KeyValue._() : super();
  factory KeyValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeyValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'mvccpb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..aInt64(2, _omitFieldNames ? '' : 'createRevision')
    ..aInt64(3, _omitFieldNames ? '' : 'modRevision')
    ..aInt64(4, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(6, _omitFieldNames ? '' : 'lease')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KeyValue clone() => KeyValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KeyValue copyWith(void Function(KeyValue) updates) =>
      super.copyWith((message) => updates(message as KeyValue)) as KeyValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValue create() => KeyValue._();
  KeyValue createEmptyInstance() => create();
  static $pb.PbList<KeyValue> createRepeated() => $pb.PbList<KeyValue>();
  @$core.pragma('dart2js:noInline')
  static KeyValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValue>(create);
  static KeyValue? _defaultInstance;

  /// key is the key in bytes. An empty key is not allowed.
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

  /// create_revision is the revision of last creation on this key.
  @$pb.TagNumber(2)
  $fixnum.Int64 get createRevision => $_getI64(1);
  @$pb.TagNumber(2)
  set createRevision($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreateRevision() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateRevision() => clearField(2);

  /// mod_revision is the revision of last modification on this key.
  @$pb.TagNumber(3)
  $fixnum.Int64 get modRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set modRevision($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasModRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearModRevision() => clearField(3);

  /// version is the version of the key. A deletion resets
  /// the version to zero and any modification of the key
  /// increases its version.
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

  /// value is the value held by the key, in bytes.
  @$pb.TagNumber(5)
  $core.List<$core.int> get value => $_getN(4);
  @$pb.TagNumber(5)
  set value($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);

  /// lease is the ID of the lease that attached to key.
  /// When the attached lease expires, the key will be deleted.
  /// If lease is 0, then no lease is attached to the key.
  @$pb.TagNumber(6)
  $fixnum.Int64 get lease => $_getI64(5);
  @$pb.TagNumber(6)
  set lease($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLease() => $_has(5);
  @$pb.TagNumber(6)
  void clearLease() => clearField(6);
}

class Event extends $pb.GeneratedMessage {
  factory Event({
    Event_EventType? type,
    KeyValue? kv,
    KeyValue? prevKv,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (kv != null) {
      $result.kv = kv;
    }
    if (prevKv != null) {
      $result.prevKv = prevKv;
    }
    return $result;
  }
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Event',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'mvccpb'),
      createEmptyInstance: create)
    ..e<Event_EventType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: Event_EventType.PUT,
        valueOf: Event_EventType.valueOf,
        enumValues: Event_EventType.values)
    ..aOM<KeyValue>(2, _omitFieldNames ? '' : 'kv', subBuilder: KeyValue.create)
    ..aOM<KeyValue>(3, _omitFieldNames ? '' : 'prevKv',
        subBuilder: KeyValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) =>
      super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  /// type is the kind of event. If type is a PUT, it indicates
  /// new data has been stored to the key. If type is a DELETE,
  /// it indicates the key was deleted.
  @$pb.TagNumber(1)
  Event_EventType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Event_EventType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// kv holds the KeyValue for the event.
  /// A PUT event contains current kv pair.
  /// A PUT event with kv.Version=1 indicates the creation of a key.
  /// A DELETE/EXPIRE event contains the deleted key with
  /// its modification revision set to the revision of deletion.
  @$pb.TagNumber(2)
  KeyValue get kv => $_getN(1);
  @$pb.TagNumber(2)
  set kv(KeyValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKv() => $_has(1);
  @$pb.TagNumber(2)
  void clearKv() => clearField(2);
  @$pb.TagNumber(2)
  KeyValue ensureKv() => $_ensure(1);

  /// prev_kv holds the key-value pair before the event happens.
  @$pb.TagNumber(3)
  KeyValue get prevKv => $_getN(2);
  @$pb.TagNumber(3)
  set prevKv(KeyValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPrevKv() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevKv() => clearField(3);
  @$pb.TagNumber(3)
  KeyValue ensurePrevKv() => $_ensure(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
