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

import 'package:protobuf/protobuf.dart' as $pb;

class AlarmType extends $pb.ProtobufEnum {
  static const AlarmType NONE = AlarmType._(0, _omitEnumNames ? '' : 'NONE');
  static const AlarmType NOSPACE =
      AlarmType._(1, _omitEnumNames ? '' : 'NOSPACE');
  static const AlarmType CORRUPT =
      AlarmType._(2, _omitEnumNames ? '' : 'CORRUPT');

  static const $core.List<AlarmType> values = <AlarmType>[
    NONE,
    NOSPACE,
    CORRUPT,
  ];

  static final $core.Map<$core.int, AlarmType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlarmType? valueOf($core.int value) => _byValue[value];

  const AlarmType._($core.int v, $core.String n) : super(v, n);
}

class RangeRequest_SortOrder extends $pb.ProtobufEnum {
  static const RangeRequest_SortOrder NONE =
      RangeRequest_SortOrder._(0, _omitEnumNames ? '' : 'NONE');
  static const RangeRequest_SortOrder ASCEND =
      RangeRequest_SortOrder._(1, _omitEnumNames ? '' : 'ASCEND');
  static const RangeRequest_SortOrder DESCEND =
      RangeRequest_SortOrder._(2, _omitEnumNames ? '' : 'DESCEND');

  static const $core.List<RangeRequest_SortOrder> values =
      <RangeRequest_SortOrder>[
    NONE,
    ASCEND,
    DESCEND,
  ];

  static final $core.Map<$core.int, RangeRequest_SortOrder> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RangeRequest_SortOrder? valueOf($core.int value) => _byValue[value];

  const RangeRequest_SortOrder._($core.int v, $core.String n) : super(v, n);
}

class RangeRequest_SortTarget extends $pb.ProtobufEnum {
  static const RangeRequest_SortTarget KEY =
      RangeRequest_SortTarget._(0, _omitEnumNames ? '' : 'KEY');
  static const RangeRequest_SortTarget VERSION =
      RangeRequest_SortTarget._(1, _omitEnumNames ? '' : 'VERSION');
  static const RangeRequest_SortTarget CREATE =
      RangeRequest_SortTarget._(2, _omitEnumNames ? '' : 'CREATE');
  static const RangeRequest_SortTarget MOD =
      RangeRequest_SortTarget._(3, _omitEnumNames ? '' : 'MOD');
  static const RangeRequest_SortTarget VALUE =
      RangeRequest_SortTarget._(4, _omitEnumNames ? '' : 'VALUE');

  static const $core.List<RangeRequest_SortTarget> values =
      <RangeRequest_SortTarget>[
    KEY,
    VERSION,
    CREATE,
    MOD,
    VALUE,
  ];

  static final $core.Map<$core.int, RangeRequest_SortTarget> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RangeRequest_SortTarget? valueOf($core.int value) => _byValue[value];

  const RangeRequest_SortTarget._($core.int v, $core.String n) : super(v, n);
}

class Compare_CompareResult extends $pb.ProtobufEnum {
  static const Compare_CompareResult EQUAL =
      Compare_CompareResult._(0, _omitEnumNames ? '' : 'EQUAL');
  static const Compare_CompareResult GREATER =
      Compare_CompareResult._(1, _omitEnumNames ? '' : 'GREATER');
  static const Compare_CompareResult LESS =
      Compare_CompareResult._(2, _omitEnumNames ? '' : 'LESS');
  static const Compare_CompareResult NOT_EQUAL =
      Compare_CompareResult._(3, _omitEnumNames ? '' : 'NOT_EQUAL');

  static const $core.List<Compare_CompareResult> values =
      <Compare_CompareResult>[
    EQUAL,
    GREATER,
    LESS,
    NOT_EQUAL,
  ];

  static final $core.Map<$core.int, Compare_CompareResult> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Compare_CompareResult? valueOf($core.int value) => _byValue[value];

  const Compare_CompareResult._($core.int v, $core.String n) : super(v, n);
}

class Compare_CompareTarget extends $pb.ProtobufEnum {
  static const Compare_CompareTarget VERSION =
      Compare_CompareTarget._(0, _omitEnumNames ? '' : 'VERSION');
  static const Compare_CompareTarget CREATE =
      Compare_CompareTarget._(1, _omitEnumNames ? '' : 'CREATE');
  static const Compare_CompareTarget MOD =
      Compare_CompareTarget._(2, _omitEnumNames ? '' : 'MOD');
  static const Compare_CompareTarget VALUE =
      Compare_CompareTarget._(3, _omitEnumNames ? '' : 'VALUE');
  static const Compare_CompareTarget LEASE =
      Compare_CompareTarget._(4, _omitEnumNames ? '' : 'LEASE');

  static const $core.List<Compare_CompareTarget> values =
      <Compare_CompareTarget>[
    VERSION,
    CREATE,
    MOD,
    VALUE,
    LEASE,
  ];

  static final $core.Map<$core.int, Compare_CompareTarget> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Compare_CompareTarget? valueOf($core.int value) => _byValue[value];

  const Compare_CompareTarget._($core.int v, $core.String n) : super(v, n);
}

class WatchCreateRequest_FilterType extends $pb.ProtobufEnum {
  static const WatchCreateRequest_FilterType NOPUT =
      WatchCreateRequest_FilterType._(0, _omitEnumNames ? '' : 'NOPUT');
  static const WatchCreateRequest_FilterType NODELETE =
      WatchCreateRequest_FilterType._(1, _omitEnumNames ? '' : 'NODELETE');

  static const $core.List<WatchCreateRequest_FilterType> values =
      <WatchCreateRequest_FilterType>[
    NOPUT,
    NODELETE,
  ];

  static final $core.Map<$core.int, WatchCreateRequest_FilterType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WatchCreateRequest_FilterType? valueOf($core.int value) =>
      _byValue[value];

  const WatchCreateRequest_FilterType._($core.int v, $core.String n)
      : super(v, n);
}

class AlarmRequest_AlarmAction extends $pb.ProtobufEnum {
  static const AlarmRequest_AlarmAction GET =
      AlarmRequest_AlarmAction._(0, _omitEnumNames ? '' : 'GET');
  static const AlarmRequest_AlarmAction ACTIVATE =
      AlarmRequest_AlarmAction._(1, _omitEnumNames ? '' : 'ACTIVATE');
  static const AlarmRequest_AlarmAction DEACTIVATE =
      AlarmRequest_AlarmAction._(2, _omitEnumNames ? '' : 'DEACTIVATE');

  static const $core.List<AlarmRequest_AlarmAction> values =
      <AlarmRequest_AlarmAction>[
    GET,
    ACTIVATE,
    DEACTIVATE,
  ];

  static final $core.Map<$core.int, AlarmRequest_AlarmAction> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlarmRequest_AlarmAction? valueOf($core.int value) => _byValue[value];

  const AlarmRequest_AlarmAction._($core.int v, $core.String n) : super(v, n);
}

class DowngradeRequest_DowngradeAction extends $pb.ProtobufEnum {
  static const DowngradeRequest_DowngradeAction VALIDATE =
      DowngradeRequest_DowngradeAction._(0, _omitEnumNames ? '' : 'VALIDATE');
  static const DowngradeRequest_DowngradeAction ENABLE =
      DowngradeRequest_DowngradeAction._(1, _omitEnumNames ? '' : 'ENABLE');
  static const DowngradeRequest_DowngradeAction CANCEL =
      DowngradeRequest_DowngradeAction._(2, _omitEnumNames ? '' : 'CANCEL');

  static const $core.List<DowngradeRequest_DowngradeAction> values =
      <DowngradeRequest_DowngradeAction>[
    VALIDATE,
    ENABLE,
    CANCEL,
  ];

  static final $core.Map<$core.int, DowngradeRequest_DowngradeAction> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DowngradeRequest_DowngradeAction? valueOf($core.int value) =>
      _byValue[value];

  const DowngradeRequest_DowngradeAction._($core.int v, $core.String n)
      : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
