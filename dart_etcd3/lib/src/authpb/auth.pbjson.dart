//
//  Generated code. Do not modify.
//  source: etcd/api/authpb/auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userAddOptionsDescriptor instead')
const UserAddOptions$json = {
  '1': 'UserAddOptions',
  '2': [
    {'1': 'no_password', '3': 1, '4': 1, '5': 8, '10': 'noPassword'},
  ],
};

/// Descriptor for `UserAddOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAddOptionsDescriptor = $convert.base64Decode(
    'Cg5Vc2VyQWRkT3B0aW9ucxIfCgtub19wYXNzd29yZBgBIAEoCFIKbm9QYXNzd29yZA==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 12, '10': 'name'},
    {'1': 'password', '3': 2, '4': 1, '5': 12, '10': 'password'},
    {'1': 'roles', '3': 3, '4': 3, '5': 9, '10': 'roles'},
    {
      '1': 'options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.authpb.UserAddOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhIKBG5hbWUYASABKAxSBG5hbWUSGgoIcGFzc3dvcmQYAiABKAxSCHBhc3N3b3JkEh'
    'QKBXJvbGVzGAMgAygJUgVyb2xlcxIwCgdvcHRpb25zGAQgASgLMhYuYXV0aHBiLlVzZXJBZGRP'
    'cHRpb25zUgdvcHRpb25z');

@$core.Deprecated('Use permissionDescriptor instead')
const Permission$json = {
  '1': 'Permission',
  '2': [
    {
      '1': 'permType',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.authpb.Permission.Type',
      '10': 'permType'
    },
    {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    {'1': 'range_end', '3': 3, '4': 1, '5': 12, '10': 'rangeEnd'},
  ],
  '4': [Permission_Type$json],
};

@$core.Deprecated('Use permissionDescriptor instead')
const Permission_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'READ', '2': 0},
    {'1': 'WRITE', '2': 1},
    {'1': 'READWRITE', '2': 2},
  ],
};

/// Descriptor for `Permission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionDescriptor = $convert.base64Decode(
    'CgpQZXJtaXNzaW9uEjMKCHBlcm1UeXBlGAEgASgOMhcuYXV0aHBiLlBlcm1pc3Npb24uVHlwZV'
    'IIcGVybVR5cGUSEAoDa2V5GAIgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAMgASgMUghyYW5nZUVu'
    'ZCIqCgRUeXBlEggKBFJFQUQQABIJCgVXUklURRABEg0KCVJFQURXUklURRAC');

@$core.Deprecated('Use roleDescriptor instead')
const Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 12, '10': 'name'},
    {
      '1': 'keyPermission',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.authpb.Permission',
      '10': 'keyPermission'
    },
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode(
    'CgRSb2xlEhIKBG5hbWUYASABKAxSBG5hbWUSOAoNa2V5UGVybWlzc2lvbhgCIAMoCzISLmF1dG'
    'hwYi5QZXJtaXNzaW9uUg1rZXlQZXJtaXNzaW9u');
