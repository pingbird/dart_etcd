//
//  Generated code. Do not modify.
//  source: etcd/api/authpb/auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Permission_Type extends $pb.ProtobufEnum {
  static const Permission_Type READ =
      Permission_Type._(0, _omitEnumNames ? '' : 'READ');
  static const Permission_Type WRITE =
      Permission_Type._(1, _omitEnumNames ? '' : 'WRITE');
  static const Permission_Type READWRITE =
      Permission_Type._(2, _omitEnumNames ? '' : 'READWRITE');

  static const $core.List<Permission_Type> values = <Permission_Type>[
    READ,
    WRITE,
    READWRITE,
  ];

  static final $core.Map<$core.int, Permission_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Permission_Type? valueOf($core.int value) => _byValue[value];

  const Permission_Type._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
