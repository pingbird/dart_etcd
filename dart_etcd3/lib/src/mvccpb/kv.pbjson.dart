//
//  Generated code. Do not modify.
//  source: etcd/api/mvccpb/kv.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use keyValueDescriptor instead')
const KeyValue$json = {
  '1': 'KeyValue',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    {'1': 'create_revision', '3': 2, '4': 1, '5': 3, '10': 'createRevision'},
    {'1': 'mod_revision', '3': 3, '4': 1, '5': 3, '10': 'modRevision'},
    {'1': 'version', '3': 4, '4': 1, '5': 3, '10': 'version'},
    {'1': 'value', '3': 5, '4': 1, '5': 12, '10': 'value'},
    {'1': 'lease', '3': 6, '4': 1, '5': 3, '10': 'lease'},
  ],
};

/// Descriptor for `KeyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDescriptor = $convert.base64Decode(
    'CghLZXlWYWx1ZRIQCgNrZXkYASABKAxSA2tleRInCg9jcmVhdGVfcmV2aXNpb24YAiABKANSDm'
    'NyZWF0ZVJldmlzaW9uEiEKDG1vZF9yZXZpc2lvbhgDIAEoA1ILbW9kUmV2aXNpb24SGAoHdmVy'
    'c2lvbhgEIAEoA1IHdmVyc2lvbhIUCgV2YWx1ZRgFIAEoDFIFdmFsdWUSFAoFbGVhc2UYBiABKA'
    'NSBWxlYXNl');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.mvccpb.Event.EventType',
      '10': 'type'
    },
    {'1': 'kv', '3': 2, '4': 1, '5': 11, '6': '.mvccpb.KeyValue', '10': 'kv'},
    {
      '1': 'prev_kv',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.mvccpb.KeyValue',
      '10': 'prevKv'
    },
  ],
  '4': [Event_EventType$json],
};

@$core.Deprecated('Use eventDescriptor instead')
const Event_EventType$json = {
  '1': 'EventType',
  '2': [
    {'1': 'PUT', '2': 0},
    {'1': 'DELETE', '2': 1},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIrCgR0eXBlGAEgASgOMhcubXZjY3BiLkV2ZW50LkV2ZW50VHlwZVIEdHlwZRIgCg'
    'JrdhgCIAEoCzIQLm12Y2NwYi5LZXlWYWx1ZVICa3YSKQoHcHJldl9rdhgDIAEoCzIQLm12Y2Nw'
    'Yi5LZXlWYWx1ZVIGcHJldkt2IiAKCUV2ZW50VHlwZRIHCgNQVVQQABIKCgZERUxFVEUQAQ==');
