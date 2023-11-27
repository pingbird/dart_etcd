//
//  Generated code. Do not modify.
//  source: etcd/api/etcdserverpb/rpc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use alarmTypeDescriptor instead')
const AlarmType$json = {
  '1': 'AlarmType',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'NOSPACE', '2': 1},
    {'1': 'CORRUPT', '2': 2, '3': {}},
  ],
  '3': {},
};

/// Descriptor for `AlarmType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alarmTypeDescriptor = $convert.base64Decode(
    'CglBbGFybVR5cGUSCAoETk9ORRAAEgsKB05PU1BBQ0UQARIUCgdDT1JSVVBUEAIaB5q1GAMzLj'
    'MaB5K1GAMzLjA=');

@$core.Deprecated('Use responseHeaderDescriptor instead')
const ResponseHeader$json = {
  '1': 'ResponseHeader',
  '2': [
    {'1': 'cluster_id', '3': 1, '4': 1, '5': 4, '10': 'clusterId'},
    {'1': 'member_id', '3': 2, '4': 1, '5': 4, '10': 'memberId'},
    {'1': 'revision', '3': 3, '4': 1, '5': 3, '10': 'revision'},
    {'1': 'raft_term', '3': 4, '4': 1, '5': 4, '10': 'raftTerm'},
  ],
  '7': {},
};

/// Descriptor for `ResponseHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseHeaderDescriptor = $convert.base64Decode(
    'Cg5SZXNwb25zZUhlYWRlchIdCgpjbHVzdGVyX2lkGAEgASgEUgljbHVzdGVySWQSGwoJbWVtYm'
    'VyX2lkGAIgASgEUghtZW1iZXJJZBIaCghyZXZpc2lvbhgDIAEoA1IIcmV2aXNpb24SGwoJcmFm'
    'dF90ZXJtGAQgASgEUghyYWZ0VGVybToHgrUYAzMuMA==');

@$core.Deprecated('Use rangeRequestDescriptor instead')
const RangeRequest$json = {
  '1': 'RangeRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    {'1': 'range_end', '3': 2, '4': 1, '5': 12, '10': 'rangeEnd'},
    {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'revision', '3': 4, '4': 1, '5': 3, '10': 'revision'},
    {
      '1': 'sort_order',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.RangeRequest.SortOrder',
      '10': 'sortOrder'
    },
    {
      '1': 'sort_target',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.RangeRequest.SortTarget',
      '10': 'sortTarget'
    },
    {'1': 'serializable', '3': 7, '4': 1, '5': 8, '10': 'serializable'},
    {'1': 'keys_only', '3': 8, '4': 1, '5': 8, '10': 'keysOnly'},
    {'1': 'count_only', '3': 9, '4': 1, '5': 8, '10': 'countOnly'},
    {
      '1': 'min_mod_revision',
      '3': 10,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'minModRevision'
    },
    {
      '1': 'max_mod_revision',
      '3': 11,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'maxModRevision'
    },
    {
      '1': 'min_create_revision',
      '3': 12,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'minCreateRevision'
    },
    {
      '1': 'max_create_revision',
      '3': 13,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'maxCreateRevision'
    },
  ],
  '4': [RangeRequest_SortOrder$json, RangeRequest_SortTarget$json],
  '7': {},
};

@$core.Deprecated('Use rangeRequestDescriptor instead')
const RangeRequest_SortOrder$json = {
  '1': 'SortOrder',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'ASCEND', '2': 1},
    {'1': 'DESCEND', '2': 2},
  ],
  '3': {},
};

@$core.Deprecated('Use rangeRequestDescriptor instead')
const RangeRequest_SortTarget$json = {
  '1': 'SortTarget',
  '2': [
    {'1': 'KEY', '2': 0},
    {'1': 'VERSION', '2': 1},
    {'1': 'CREATE', '2': 2},
    {'1': 'MOD', '2': 3},
    {'1': 'VALUE', '2': 4},
  ],
  '3': {},
};

/// Descriptor for `RangeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeRequestDescriptor = $convert.base64Decode(
    'CgxSYW5nZVJlcXVlc3QSEAoDa2V5GAEgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAIgASgMUghyYW'
    '5nZUVuZBIUCgVsaW1pdBgDIAEoA1IFbGltaXQSGgoIcmV2aXNpb24YBCABKANSCHJldmlzaW9u'
    'EkMKCnNvcnRfb3JkZXIYBSABKA4yJC5ldGNkc2VydmVycGIuUmFuZ2VSZXF1ZXN0LlNvcnRPcm'
    'RlclIJc29ydE9yZGVyEkYKC3NvcnRfdGFyZ2V0GAYgASgOMiUuZXRjZHNlcnZlcnBiLlJhbmdl'
    'UmVxdWVzdC5Tb3J0VGFyZ2V0Ugpzb3J0VGFyZ2V0EiIKDHNlcmlhbGl6YWJsZRgHIAEoCFIMc2'
    'VyaWFsaXphYmxlEhsKCWtleXNfb25seRgIIAEoCFIIa2V5c09ubHkSHQoKY291bnRfb25seRgJ'
    'IAEoCFIJY291bnRPbmx5EjEKEG1pbl9tb2RfcmV2aXNpb24YCiABKANCB4q1GAMzLjFSDm1pbk'
    '1vZFJldmlzaW9uEjEKEG1heF9tb2RfcmV2aXNpb24YCyABKANCB4q1GAMzLjFSDm1heE1vZFJl'
    'dmlzaW9uEjcKE21pbl9jcmVhdGVfcmV2aXNpb24YDCABKANCB4q1GAMzLjFSEW1pbkNyZWF0ZV'
    'JldmlzaW9uEjcKE21heF9jcmVhdGVfcmV2aXNpb24YDSABKANCB4q1GAMzLjFSEW1heENyZWF0'
    'ZVJldmlzaW9uIjcKCVNvcnRPcmRlchIICgROT05FEAASCgoGQVNDRU5EEAESCwoHREVTQ0VORB'
    'ACGgeStRgDMy4wIksKClNvcnRUYXJnZXQSBwoDS0VZEAASCwoHVkVSU0lPThABEgoKBkNSRUFU'
    'RRACEgcKA01PRBADEgkKBVZBTFVFEAQaB5K1GAMzLjA6B4K1GAMzLjA=');

@$core.Deprecated('Use rangeResponseDescriptor instead')
const RangeResponse$json = {
  '1': 'RangeResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'kvs', '3': 2, '4': 3, '5': 11, '6': '.mvccpb.KeyValue', '10': 'kvs'},
    {'1': 'more', '3': 3, '4': 1, '5': 8, '10': 'more'},
    {'1': 'count', '3': 4, '4': 1, '5': 3, '10': 'count'},
  ],
  '7': {},
};

/// Descriptor for `RangeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeResponseDescriptor = $convert.base64Decode(
    'Cg1SYW5nZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZU'
    'hlYWRlclIGaGVhZGVyEiIKA2t2cxgCIAMoCzIQLm12Y2NwYi5LZXlWYWx1ZVIDa3ZzEhIKBG1v'
    'cmUYAyABKAhSBG1vcmUSFAoFY291bnQYBCABKANSBWNvdW50OgeCtRgDMy4w');

@$core.Deprecated('Use putRequestDescriptor instead')
const PutRequest$json = {
  '1': 'PutRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    {'1': 'lease', '3': 3, '4': 1, '5': 3, '10': 'lease'},
    {'1': 'prev_kv', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'prevKv'},
    {'1': 'ignore_value', '3': 5, '4': 1, '5': 8, '8': {}, '10': 'ignoreValue'},
    {'1': 'ignore_lease', '3': 6, '4': 1, '5': 8, '8': {}, '10': 'ignoreLease'},
  ],
  '7': {},
};

/// Descriptor for `PutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putRequestDescriptor = $convert.base64Decode(
    'CgpQdXRSZXF1ZXN0EhAKA2tleRgBIAEoDFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZRIUCg'
    'VsZWFzZRgDIAEoA1IFbGVhc2USIAoHcHJldl9rdhgEIAEoCEIHirUYAzMuMVIGcHJldkt2EioK'
    'DGlnbm9yZV92YWx1ZRgFIAEoCEIHirUYAzMuMlILaWdub3JlVmFsdWUSKgoMaWdub3JlX2xlYX'
    'NlGAYgASgIQgeKtRgDMy4yUgtpZ25vcmVMZWFzZToHgrUYAzMuMA==');

@$core.Deprecated('Use putResponseDescriptor instead')
const PutResponse$json = {
  '1': 'PutResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'prev_kv',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.mvccpb.KeyValue',
      '8': {},
      '10': 'prevKv'
    },
  ],
  '7': {},
};

/// Descriptor for `PutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putResponseDescriptor = $convert.base64Decode(
    'CgtQdXRSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZW'
    'FkZXJSBmhlYWRlchIyCgdwcmV2X2t2GAIgASgLMhAubXZjY3BiLktleVZhbHVlQgeKtRgDMy4x'
    'UgZwcmV2S3Y6B4K1GAMzLjA=');

@$core.Deprecated('Use deleteRangeRequestDescriptor instead')
const DeleteRangeRequest$json = {
  '1': 'DeleteRangeRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    {'1': 'range_end', '3': 2, '4': 1, '5': 12, '10': 'rangeEnd'},
    {'1': 'prev_kv', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'prevKv'},
  ],
  '7': {},
};

/// Descriptor for `DeleteRangeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRangeRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVSYW5nZVJlcXVlc3QSEAoDa2V5GAEgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAIgAS'
    'gMUghyYW5nZUVuZBIgCgdwcmV2X2t2GAMgASgIQgeKtRgDMy4xUgZwcmV2S3Y6B4K1GAMzLjA=');

@$core.Deprecated('Use deleteRangeResponseDescriptor instead')
const DeleteRangeResponse$json = {
  '1': 'DeleteRangeResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'deleted', '3': 2, '4': 1, '5': 3, '10': 'deleted'},
    {
      '1': 'prev_kvs',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.mvccpb.KeyValue',
      '8': {},
      '10': 'prevKvs'
    },
  ],
  '7': {},
};

/// Descriptor for `DeleteRangeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRangeResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVSYW5nZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyEhgKB2RlbGV0ZWQYAiABKANSB2RlbGV0ZWQSNAoIcHJldl9r'
    'dnMYAyADKAsyEC5tdmNjcGIuS2V5VmFsdWVCB4q1GAMzLjFSB3ByZXZLdnM6B4K1GAMzLjA=');

@$core.Deprecated('Use requestOpDescriptor instead')
const RequestOp$json = {
  '1': 'RequestOp',
  '2': [
    {
      '1': 'request_range',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.RangeRequest',
      '9': 0,
      '10': 'requestRange'
    },
    {
      '1': 'request_put',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.PutRequest',
      '9': 0,
      '10': 'requestPut'
    },
    {
      '1': 'request_delete_range',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.DeleteRangeRequest',
      '9': 0,
      '10': 'requestDeleteRange'
    },
    {
      '1': 'request_txn',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.TxnRequest',
      '8': {},
      '9': 0,
      '10': 'requestTxn'
    },
  ],
  '7': {},
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `RequestOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestOpDescriptor = $convert.base64Decode(
    'CglSZXF1ZXN0T3ASQQoNcmVxdWVzdF9yYW5nZRgBIAEoCzIaLmV0Y2RzZXJ2ZXJwYi5SYW5nZV'
    'JlcXVlc3RIAFIMcmVxdWVzdFJhbmdlEjsKC3JlcXVlc3RfcHV0GAIgASgLMhguZXRjZHNlcnZl'
    'cnBiLlB1dFJlcXVlc3RIAFIKcmVxdWVzdFB1dBJUChRyZXF1ZXN0X2RlbGV0ZV9yYW5nZRgDIA'
    'EoCzIgLmV0Y2RzZXJ2ZXJwYi5EZWxldGVSYW5nZVJlcXVlc3RIAFIScmVxdWVzdERlbGV0ZVJh'
    'bmdlEkQKC3JlcXVlc3RfdHhuGAQgASgLMhguZXRjZHNlcnZlcnBiLlR4blJlcXVlc3RCB4q1GA'
    'MzLjNIAFIKcmVxdWVzdFR4bjoHgrUYAzMuMEIJCgdyZXF1ZXN0');

@$core.Deprecated('Use responseOpDescriptor instead')
const ResponseOp$json = {
  '1': 'ResponseOp',
  '2': [
    {
      '1': 'response_range',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.RangeResponse',
      '9': 0,
      '10': 'responseRange'
    },
    {
      '1': 'response_put',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.PutResponse',
      '9': 0,
      '10': 'responsePut'
    },
    {
      '1': 'response_delete_range',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.DeleteRangeResponse',
      '9': 0,
      '10': 'responseDeleteRange'
    },
    {
      '1': 'response_txn',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.TxnResponse',
      '8': {},
      '9': 0,
      '10': 'responseTxn'
    },
  ],
  '7': {},
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `ResponseOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseOpDescriptor = $convert.base64Decode(
    'CgpSZXNwb25zZU9wEkQKDnJlc3BvbnNlX3JhbmdlGAEgASgLMhsuZXRjZHNlcnZlcnBiLlJhbm'
    'dlUmVzcG9uc2VIAFINcmVzcG9uc2VSYW5nZRI+CgxyZXNwb25zZV9wdXQYAiABKAsyGS5ldGNk'
    'c2VydmVycGIuUHV0UmVzcG9uc2VIAFILcmVzcG9uc2VQdXQSVwoVcmVzcG9uc2VfZGVsZXRlX3'
    'JhbmdlGAMgASgLMiEuZXRjZHNlcnZlcnBiLkRlbGV0ZVJhbmdlUmVzcG9uc2VIAFITcmVzcG9u'
    'c2VEZWxldGVSYW5nZRJHCgxyZXNwb25zZV90eG4YBCABKAsyGS5ldGNkc2VydmVycGIuVHhuUm'
    'VzcG9uc2VCB4q1GAMzLjNIAFILcmVzcG9uc2VUeG46B4K1GAMzLjBCCgoIcmVzcG9uc2U=');

@$core.Deprecated('Use compareDescriptor instead')
const Compare$json = {
  '1': 'Compare',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.Compare.CompareResult',
      '10': 'result'
    },
    {
      '1': 'target',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.Compare.CompareTarget',
      '10': 'target'
    },
    {'1': 'key', '3': 3, '4': 1, '5': 12, '10': 'key'},
    {'1': 'version', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'version'},
    {
      '1': 'create_revision',
      '3': 5,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'createRevision'
    },
    {'1': 'mod_revision', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'modRevision'},
    {'1': 'value', '3': 7, '4': 1, '5': 12, '9': 0, '10': 'value'},
    {'1': 'lease', '3': 8, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'lease'},
    {'1': 'range_end', '3': 64, '4': 1, '5': 12, '8': {}, '10': 'rangeEnd'},
  ],
  '4': [Compare_CompareResult$json, Compare_CompareTarget$json],
  '7': {},
  '8': [
    {'1': 'target_union'},
  ],
};

@$core.Deprecated('Use compareDescriptor instead')
const Compare_CompareResult$json = {
  '1': 'CompareResult',
  '2': [
    {'1': 'EQUAL', '2': 0},
    {'1': 'GREATER', '2': 1},
    {'1': 'LESS', '2': 2},
    {'1': 'NOT_EQUAL', '2': 3, '3': {}},
  ],
  '3': {},
};

@$core.Deprecated('Use compareDescriptor instead')
const Compare_CompareTarget$json = {
  '1': 'CompareTarget',
  '2': [
    {'1': 'VERSION', '2': 0},
    {'1': 'CREATE', '2': 1},
    {'1': 'MOD', '2': 2},
    {'1': 'VALUE', '2': 3},
    {'1': 'LEASE', '2': 4, '3': {}},
  ],
  '3': {},
};

/// Descriptor for `Compare`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compareDescriptor = $convert.base64Decode(
    'CgdDb21wYXJlEjsKBnJlc3VsdBgBIAEoDjIjLmV0Y2RzZXJ2ZXJwYi5Db21wYXJlLkNvbXBhcm'
    'VSZXN1bHRSBnJlc3VsdBI7CgZ0YXJnZXQYAiABKA4yIy5ldGNkc2VydmVycGIuQ29tcGFyZS5D'
    'b21wYXJlVGFyZ2V0UgZ0YXJnZXQSEAoDa2V5GAMgASgMUgNrZXkSGgoHdmVyc2lvbhgEIAEoA0'
    'gAUgd2ZXJzaW9uEikKD2NyZWF0ZV9yZXZpc2lvbhgFIAEoA0gAUg5jcmVhdGVSZXZpc2lvbhIj'
    'Cgxtb2RfcmV2aXNpb24YBiABKANIAFILbW9kUmV2aXNpb24SFgoFdmFsdWUYByABKAxIAFIFdm'
    'FsdWUSHwoFbGVhc2UYCCABKANCB4q1GAMzLjNIAFIFbGVhc2USJAoJcmFuZ2VfZW5kGEAgASgM'
    'QgeKtRgDMy4zUghyYW5nZUVuZCJSCg1Db21wYXJlUmVzdWx0EgkKBUVRVUFMEAASCwoHR1JFQV'
    'RFUhABEggKBExFU1MQAhIWCglOT1RfRVFVQUwQAxoHmrUYAzMuMRoHkrUYAzMuMCJZCg1Db21w'
    'YXJlVGFyZ2V0EgsKB1ZFUlNJT04QABIKCgZDUkVBVEUQARIHCgNNT0QQAhIJCgVWQUxVRRADEh'
    'IKBUxFQVNFEAQaB5q1GAMzLjMaB5K1GAMzLjA6B4K1GAMzLjBCDgoMdGFyZ2V0X3VuaW9u');

@$core.Deprecated('Use txnRequestDescriptor instead')
const TxnRequest$json = {
  '1': 'TxnRequest',
  '2': [
    {
      '1': 'compare',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.Compare',
      '10': 'compare'
    },
    {
      '1': 'success',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.RequestOp',
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.RequestOp',
      '10': 'failure'
    },
  ],
  '7': {},
};

/// Descriptor for `TxnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnRequestDescriptor = $convert.base64Decode(
    'CgpUeG5SZXF1ZXN0Ei8KB2NvbXBhcmUYASADKAsyFS5ldGNkc2VydmVycGIuQ29tcGFyZVIHY2'
    '9tcGFyZRIxCgdzdWNjZXNzGAIgAygLMhcuZXRjZHNlcnZlcnBiLlJlcXVlc3RPcFIHc3VjY2Vz'
    'cxIxCgdmYWlsdXJlGAMgAygLMhcuZXRjZHNlcnZlcnBiLlJlcXVlc3RPcFIHZmFpbHVyZToHgr'
    'UYAzMuMA==');

@$core.Deprecated('Use txnResponseDescriptor instead')
const TxnResponse$json = {
  '1': 'TxnResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'succeeded', '3': 2, '4': 1, '5': 8, '10': 'succeeded'},
    {
      '1': 'responses',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.ResponseOp',
      '10': 'responses'
    },
  ],
  '7': {},
};

/// Descriptor for `TxnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnResponseDescriptor = $convert.base64Decode(
    'CgtUeG5SZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZW'
    'FkZXJSBmhlYWRlchIcCglzdWNjZWVkZWQYAiABKAhSCXN1Y2NlZWRlZBI2CglyZXNwb25zZXMY'
    'AyADKAsyGC5ldGNkc2VydmVycGIuUmVzcG9uc2VPcFIJcmVzcG9uc2VzOgeCtRgDMy4w');

@$core.Deprecated('Use compactionRequestDescriptor instead')
const CompactionRequest$json = {
  '1': 'CompactionRequest',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 3, '10': 'revision'},
    {'1': 'physical', '3': 2, '4': 1, '5': 8, '10': 'physical'},
  ],
  '7': {},
};

/// Descriptor for `CompactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactionRequestDescriptor = $convert.base64Decode(
    'ChFDb21wYWN0aW9uUmVxdWVzdBIaCghyZXZpc2lvbhgBIAEoA1IIcmV2aXNpb24SGgoIcGh5c2'
    'ljYWwYAiABKAhSCHBoeXNpY2FsOgeCtRgDMy4w');

@$core.Deprecated('Use compactionResponseDescriptor instead')
const CompactionResponse$json = {
  '1': 'CompactionResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `CompactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactionResponseDescriptor = $convert.base64Decode(
    'ChJDb21wYWN0aW9uUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXI6B4K1GAMzLjA=');

@$core.Deprecated('Use hashRequestDescriptor instead')
const HashRequest$json = {
  '1': 'HashRequest',
  '7': {},
};

/// Descriptor for `HashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashRequestDescriptor =
    $convert.base64Decode('CgtIYXNoUmVxdWVzdDoHgrUYAzMuMA==');

@$core.Deprecated('Use hashKVRequestDescriptor instead')
const HashKVRequest$json = {
  '1': 'HashKVRequest',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 3, '10': 'revision'},
  ],
  '7': {},
};

/// Descriptor for `HashKVRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashKVRequestDescriptor = $convert.base64Decode(
    'Cg1IYXNoS1ZSZXF1ZXN0EhoKCHJldmlzaW9uGAEgASgDUghyZXZpc2lvbjoHgrUYAzMuMw==');

@$core.Deprecated('Use hashKVResponseDescriptor instead')
const HashKVResponse$json = {
  '1': 'HashKVResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'hash', '3': 2, '4': 1, '5': 13, '10': 'hash'},
    {'1': 'compact_revision', '3': 3, '4': 1, '5': 3, '10': 'compactRevision'},
    {
      '1': 'hash_revision',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'hashRevision'
    },
  ],
  '7': {},
};

/// Descriptor for `HashKVResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashKVResponseDescriptor = $convert.base64Decode(
    'Cg5IYXNoS1ZSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2'
    'VIZWFkZXJSBmhlYWRlchISCgRoYXNoGAIgASgNUgRoYXNoEikKEGNvbXBhY3RfcmV2aXNpb24Y'
    'AyABKANSD2NvbXBhY3RSZXZpc2lvbhIsCg1oYXNoX3JldmlzaW9uGAQgASgDQgeKtRgDMy42Ug'
    'xoYXNoUmV2aXNpb246B4K1GAMzLjM=');

@$core.Deprecated('Use hashResponseDescriptor instead')
const HashResponse$json = {
  '1': 'HashResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'hash', '3': 2, '4': 1, '5': 13, '10': 'hash'},
  ],
  '7': {},
};

/// Descriptor for `HashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashResponseDescriptor = $convert.base64Decode(
    'CgxIYXNoUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSG'
    'VhZGVyUgZoZWFkZXISEgoEaGFzaBgCIAEoDVIEaGFzaDoHgrUYAzMuMA==');

@$core.Deprecated('Use snapshotRequestDescriptor instead')
const SnapshotRequest$json = {
  '1': 'SnapshotRequest',
  '7': {},
};

/// Descriptor for `SnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotRequestDescriptor =
    $convert.base64Decode('Cg9TbmFwc2hvdFJlcXVlc3Q6B4K1GAMzLjM=');

@$core.Deprecated('Use snapshotResponseDescriptor instead')
const SnapshotResponse$json = {
  '1': 'SnapshotResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'remaining_bytes', '3': 2, '4': 1, '5': 4, '10': 'remainingBytes'},
    {'1': 'blob', '3': 3, '4': 1, '5': 12, '10': 'blob'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'version'},
  ],
  '7': {},
};

/// Descriptor for `SnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotResponseDescriptor = $convert.base64Decode(
    'ChBTbmFwc2hvdFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb2'
    '5zZUhlYWRlclIGaGVhZGVyEicKD3JlbWFpbmluZ19ieXRlcxgCIAEoBFIOcmVtYWluaW5nQnl0'
    'ZXMSEgoEYmxvYhgDIAEoDFIEYmxvYhIhCgd2ZXJzaW9uGAQgASgJQgeKtRgDMy42Ugd2ZXJzaW'
    '9uOgeCtRgDMy4z');

@$core.Deprecated('Use watchRequestDescriptor instead')
const WatchRequest$json = {
  '1': 'WatchRequest',
  '2': [
    {
      '1': 'create_request',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.WatchCreateRequest',
      '9': 0,
      '10': 'createRequest'
    },
    {
      '1': 'cancel_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.WatchCancelRequest',
      '9': 0,
      '10': 'cancelRequest'
    },
    {
      '1': 'progress_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.WatchProgressRequest',
      '8': {},
      '9': 0,
      '10': 'progressRequest'
    },
  ],
  '7': {},
  '8': [
    {'1': 'request_union'},
  ],
};

/// Descriptor for `WatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchRequestDescriptor = $convert.base64Decode(
    'CgxXYXRjaFJlcXVlc3QSSQoOY3JlYXRlX3JlcXVlc3QYASABKAsyIC5ldGNkc2VydmVycGIuV2'
    'F0Y2hDcmVhdGVSZXF1ZXN0SABSDWNyZWF0ZVJlcXVlc3QSSQoOY2FuY2VsX3JlcXVlc3QYAiAB'
    'KAsyIC5ldGNkc2VydmVycGIuV2F0Y2hDYW5jZWxSZXF1ZXN0SABSDWNhbmNlbFJlcXVlc3QSWA'
    'oQcHJvZ3Jlc3NfcmVxdWVzdBgDIAEoCzIiLmV0Y2RzZXJ2ZXJwYi5XYXRjaFByb2dyZXNzUmVx'
    'dWVzdEIHirUYAzMuNEgAUg9wcm9ncmVzc1JlcXVlc3Q6B4K1GAMzLjBCDwoNcmVxdWVzdF91bm'
    'lvbg==');

@$core.Deprecated('Use watchCreateRequestDescriptor instead')
const WatchCreateRequest$json = {
  '1': 'WatchCreateRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    {'1': 'range_end', '3': 2, '4': 1, '5': 12, '10': 'rangeEnd'},
    {'1': 'start_revision', '3': 3, '4': 1, '5': 3, '10': 'startRevision'},
    {'1': 'progress_notify', '3': 4, '4': 1, '5': 8, '10': 'progressNotify'},
    {
      '1': 'filters',
      '3': 5,
      '4': 3,
      '5': 14,
      '6': '.etcdserverpb.WatchCreateRequest.FilterType',
      '8': {},
      '10': 'filters'
    },
    {'1': 'prev_kv', '3': 6, '4': 1, '5': 8, '8': {}, '10': 'prevKv'},
    {'1': 'watch_id', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'watchId'},
    {'1': 'fragment', '3': 8, '4': 1, '5': 8, '8': {}, '10': 'fragment'},
  ],
  '4': [WatchCreateRequest_FilterType$json],
  '7': {},
};

@$core.Deprecated('Use watchCreateRequestDescriptor instead')
const WatchCreateRequest_FilterType$json = {
  '1': 'FilterType',
  '2': [
    {'1': 'NOPUT', '2': 0},
    {'1': 'NODELETE', '2': 1},
  ],
  '3': {},
};

/// Descriptor for `WatchCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchCreateRequestDescriptor = $convert.base64Decode(
    'ChJXYXRjaENyZWF0ZVJlcXVlc3QSEAoDa2V5GAEgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAIgAS'
    'gMUghyYW5nZUVuZBIlCg5zdGFydF9yZXZpc2lvbhgDIAEoA1INc3RhcnRSZXZpc2lvbhInCg9w'
    'cm9ncmVzc19ub3RpZnkYBCABKAhSDnByb2dyZXNzTm90aWZ5Ek4KB2ZpbHRlcnMYBSADKA4yKy'
    '5ldGNkc2VydmVycGIuV2F0Y2hDcmVhdGVSZXF1ZXN0LkZpbHRlclR5cGVCB4q1GAMzLjFSB2Zp'
    'bHRlcnMSIAoHcHJldl9rdhgGIAEoCEIHirUYAzMuMVIGcHJldkt2EiIKCHdhdGNoX2lkGAcgAS'
    'gDQgeKtRgDMy40Ugd3YXRjaElkEiMKCGZyYWdtZW50GAggASgIQgeKtRgDMy40UghmcmFnbWVu'
    'dCIuCgpGaWx0ZXJUeXBlEgkKBU5PUFVUEAASDAoITk9ERUxFVEUQARoHkrUYAzMuMToHgrUYAz'
    'MuMA==');

@$core.Deprecated('Use watchCancelRequestDescriptor instead')
const WatchCancelRequest$json = {
  '1': 'WatchCancelRequest',
  '2': [
    {'1': 'watch_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'watchId'},
  ],
  '7': {},
};

/// Descriptor for `WatchCancelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchCancelRequestDescriptor = $convert.base64Decode(
    'ChJXYXRjaENhbmNlbFJlcXVlc3QSIgoId2F0Y2hfaWQYASABKANCB4q1GAMzLjFSB3dhdGNoSW'
    'Q6B4K1GAMzLjE=');

@$core.Deprecated('Use watchProgressRequestDescriptor instead')
const WatchProgressRequest$json = {
  '1': 'WatchProgressRequest',
  '7': {},
};

/// Descriptor for `WatchProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchProgressRequestDescriptor =
    $convert.base64Decode('ChRXYXRjaFByb2dyZXNzUmVxdWVzdDoHgrUYAzMuNA==');

@$core.Deprecated('Use watchResponseDescriptor instead')
const WatchResponse$json = {
  '1': 'WatchResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'watch_id', '3': 2, '4': 1, '5': 3, '10': 'watchId'},
    {'1': 'created', '3': 3, '4': 1, '5': 8, '10': 'created'},
    {'1': 'canceled', '3': 4, '4': 1, '5': 8, '10': 'canceled'},
    {'1': 'compact_revision', '3': 5, '4': 1, '5': 3, '10': 'compactRevision'},
    {
      '1': 'cancel_reason',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'cancelReason'
    },
    {'1': 'fragment', '3': 7, '4': 1, '5': 8, '8': {}, '10': 'fragment'},
    {
      '1': 'events',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.mvccpb.Event',
      '10': 'events'
    },
  ],
  '7': {},
};

/// Descriptor for `WatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchResponseDescriptor = $convert.base64Decode(
    'Cg1XYXRjaFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZU'
    'hlYWRlclIGaGVhZGVyEhkKCHdhdGNoX2lkGAIgASgDUgd3YXRjaElkEhgKB2NyZWF0ZWQYAyAB'
    'KAhSB2NyZWF0ZWQSGgoIY2FuY2VsZWQYBCABKAhSCGNhbmNlbGVkEikKEGNvbXBhY3RfcmV2aX'
    'Npb24YBSABKANSD2NvbXBhY3RSZXZpc2lvbhIsCg1jYW5jZWxfcmVhc29uGAYgASgJQgeKtRgD'
    'My40UgxjYW5jZWxSZWFzb24SIwoIZnJhZ21lbnQYByABKAhCB4q1GAMzLjRSCGZyYWdtZW50Ei'
    'UKBmV2ZW50cxgLIAMoCzINLm12Y2NwYi5FdmVudFIGZXZlbnRzOgeCtRgDMy4w');

@$core.Deprecated('Use leaseGrantRequestDescriptor instead')
const LeaseGrantRequest$json = {
  '1': 'LeaseGrantRequest',
  '2': [
    {'1': 'TTL', '3': 1, '4': 1, '5': 3, '10': 'TTL'},
    {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
  ],
  '7': {},
};

/// Descriptor for `LeaseGrantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseGrantRequestDescriptor = $convert.base64Decode(
    'ChFMZWFzZUdyYW50UmVxdWVzdBIQCgNUVEwYASABKANSA1RUTBIOCgJJRBgCIAEoA1ICSUQ6B4'
    'K1GAMzLjA=');

@$core.Deprecated('Use leaseGrantResponseDescriptor instead')
const LeaseGrantResponse$json = {
  '1': 'LeaseGrantResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
    {'1': 'TTL', '3': 3, '4': 1, '5': 3, '10': 'TTL'},
    {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
  '7': {},
};

/// Descriptor for `LeaseGrantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseGrantResponseDescriptor = $convert.base64Decode(
    'ChJMZWFzZUdyYW50UmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXISDgoCSUQYAiABKANSAklEEhAKA1RUTBgDIAEoA1IDVFRMEhQK'
    'BWVycm9yGAQgASgJUgVlcnJvcjoHgrUYAzMuMA==');

@$core.Deprecated('Use leaseRevokeRequestDescriptor instead')
const LeaseRevokeRequest$json = {
  '1': 'LeaseRevokeRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
  ],
  '7': {},
};

/// Descriptor for `LeaseRevokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseRevokeRequestDescriptor =
    $convert.base64Decode(
        'ChJMZWFzZVJldm9rZVJlcXVlc3QSDgoCSUQYASABKANSAklEOgeCtRgDMy4w');

@$core.Deprecated('Use leaseRevokeResponseDescriptor instead')
const LeaseRevokeResponse$json = {
  '1': 'LeaseRevokeResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `LeaseRevokeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseRevokeResponseDescriptor = $convert.base64Decode(
    'ChNMZWFzZVJldm9rZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use leaseCheckpointDescriptor instead')
const LeaseCheckpoint$json = {
  '1': 'LeaseCheckpoint',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
    {'1': 'remaining_TTL', '3': 2, '4': 1, '5': 3, '10': 'remainingTTL'},
  ],
  '7': {},
};

/// Descriptor for `LeaseCheckpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseCheckpointDescriptor = $convert.base64Decode(
    'Cg9MZWFzZUNoZWNrcG9pbnQSDgoCSUQYASABKANSAklEEiMKDXJlbWFpbmluZ19UVEwYAiABKA'
    'NSDHJlbWFpbmluZ1RUTDoHgrUYAzMuNA==');

@$core.Deprecated('Use leaseCheckpointRequestDescriptor instead')
const LeaseCheckpointRequest$json = {
  '1': 'LeaseCheckpointRequest',
  '2': [
    {
      '1': 'checkpoints',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.LeaseCheckpoint',
      '10': 'checkpoints'
    },
  ],
  '7': {},
};

/// Descriptor for `LeaseCheckpointRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseCheckpointRequestDescriptor =
    $convert.base64Decode(
        'ChZMZWFzZUNoZWNrcG9pbnRSZXF1ZXN0Ej8KC2NoZWNrcG9pbnRzGAEgAygLMh0uZXRjZHNlcn'
        'ZlcnBiLkxlYXNlQ2hlY2twb2ludFILY2hlY2twb2ludHM6B4K1GAMzLjQ=');

@$core.Deprecated('Use leaseCheckpointResponseDescriptor instead')
const LeaseCheckpointResponse$json = {
  '1': 'LeaseCheckpointResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `LeaseCheckpointResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseCheckpointResponseDescriptor =
    $convert.base64Decode(
        'ChdMZWFzZUNoZWNrcG9pbnRSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycG'
        'IuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcjoHgrUYAzMuNA==');

@$core.Deprecated('Use leaseKeepAliveRequestDescriptor instead')
const LeaseKeepAliveRequest$json = {
  '1': 'LeaseKeepAliveRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
  ],
  '7': {},
};

/// Descriptor for `LeaseKeepAliveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseKeepAliveRequestDescriptor =
    $convert.base64Decode(
        'ChVMZWFzZUtlZXBBbGl2ZVJlcXVlc3QSDgoCSUQYASABKANSAklEOgeCtRgDMy4w');

@$core.Deprecated('Use leaseKeepAliveResponseDescriptor instead')
const LeaseKeepAliveResponse$json = {
  '1': 'LeaseKeepAliveResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
    {'1': 'TTL', '3': 3, '4': 1, '5': 3, '10': 'TTL'},
  ],
  '7': {},
};

/// Descriptor for `LeaseKeepAliveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseKeepAliveResponseDescriptor = $convert.base64Decode(
    'ChZMZWFzZUtlZXBBbGl2ZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi'
    '5SZXNwb25zZUhlYWRlclIGaGVhZGVyEg4KAklEGAIgASgDUgJJRBIQCgNUVEwYAyABKANSA1RU'
    'TDoHgrUYAzMuMA==');

@$core.Deprecated('Use leaseTimeToLiveRequestDescriptor instead')
const LeaseTimeToLiveRequest$json = {
  '1': 'LeaseTimeToLiveRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
    {'1': 'keys', '3': 2, '4': 1, '5': 8, '10': 'keys'},
  ],
  '7': {},
};

/// Descriptor for `LeaseTimeToLiveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseTimeToLiveRequestDescriptor =
    $convert.base64Decode(
        'ChZMZWFzZVRpbWVUb0xpdmVSZXF1ZXN0Eg4KAklEGAEgASgDUgJJRBISCgRrZXlzGAIgASgIUg'
        'RrZXlzOgeCtRgDMy4x');

@$core.Deprecated('Use leaseTimeToLiveResponseDescriptor instead')
const LeaseTimeToLiveResponse$json = {
  '1': 'LeaseTimeToLiveResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
    {'1': 'TTL', '3': 3, '4': 1, '5': 3, '10': 'TTL'},
    {'1': 'grantedTTL', '3': 4, '4': 1, '5': 3, '10': 'grantedTTL'},
    {'1': 'keys', '3': 5, '4': 3, '5': 12, '10': 'keys'},
  ],
  '7': {},
};

/// Descriptor for `LeaseTimeToLiveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseTimeToLiveResponseDescriptor = $convert.base64Decode(
    'ChdMZWFzZVRpbWVUb0xpdmVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycG'
    'IuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIOCgJJRBgCIAEoA1ICSUQSEAoDVFRMGAMgASgDUgNU'
    'VEwSHgoKZ3JhbnRlZFRUTBgEIAEoA1IKZ3JhbnRlZFRUTBISCgRrZXlzGAUgAygMUgRrZXlzOg'
    'eCtRgDMy4x');

@$core.Deprecated('Use leaseLeasesRequestDescriptor instead')
const LeaseLeasesRequest$json = {
  '1': 'LeaseLeasesRequest',
  '7': {},
};

/// Descriptor for `LeaseLeasesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseLeasesRequestDescriptor =
    $convert.base64Decode('ChJMZWFzZUxlYXNlc1JlcXVlc3Q6B4K1GAMzLjM=');

@$core.Deprecated('Use leaseStatusDescriptor instead')
const LeaseStatus$json = {
  '1': 'LeaseStatus',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
  ],
  '7': {},
};

/// Descriptor for `LeaseStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseStatusDescriptor = $convert
    .base64Decode('CgtMZWFzZVN0YXR1cxIOCgJJRBgBIAEoA1ICSUQ6B4K1GAMzLjM=');

@$core.Deprecated('Use leaseLeasesResponseDescriptor instead')
const LeaseLeasesResponse$json = {
  '1': 'LeaseLeasesResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'leases',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.LeaseStatus',
      '10': 'leases'
    },
  ],
  '7': {},
};

/// Descriptor for `LeaseLeasesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseLeasesResponseDescriptor = $convert.base64Decode(
    'ChNMZWFzZUxlYXNlc1Jlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyEjEKBmxlYXNlcxgCIAMoCzIZLmV0Y2RzZXJ2ZXJwYi5MZWFz'
    'ZVN0YXR1c1IGbGVhc2VzOgeCtRgDMy4z');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'peerURLs', '3': 3, '4': 3, '5': 9, '10': 'peerURLs'},
    {'1': 'clientURLs', '3': 4, '4': 3, '5': 9, '10': 'clientURLs'},
    {'1': 'isLearner', '3': 5, '4': 1, '5': 8, '8': {}, '10': 'isLearner'},
  ],
  '7': {},
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode(
    'CgZNZW1iZXISDgoCSUQYASABKARSAklEEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIcGVlclVSTH'
    'MYAyADKAlSCHBlZXJVUkxzEh4KCmNsaWVudFVSTHMYBCADKAlSCmNsaWVudFVSTHMSJQoJaXNM'
    'ZWFybmVyGAUgASgIQgeKtRgDMy40Uglpc0xlYXJuZXI6B4K1GAMzLjA=');

@$core.Deprecated('Use memberAddRequestDescriptor instead')
const MemberAddRequest$json = {
  '1': 'MemberAddRequest',
  '2': [
    {'1': 'peerURLs', '3': 1, '4': 3, '5': 9, '10': 'peerURLs'},
    {'1': 'isLearner', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'isLearner'},
  ],
  '7': {},
};

/// Descriptor for `MemberAddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberAddRequestDescriptor = $convert.base64Decode(
    'ChBNZW1iZXJBZGRSZXF1ZXN0EhoKCHBlZXJVUkxzGAEgAygJUghwZWVyVVJMcxIlCglpc0xlYX'
    'JuZXIYAiABKAhCB4q1GAMzLjRSCWlzTGVhcm5lcjoHgrUYAzMuMA==');

@$core.Deprecated('Use memberAddResponseDescriptor instead')
const MemberAddResponse$json = {
  '1': 'MemberAddResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'member',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.Member',
      '10': 'member'
    },
    {
      '1': 'members',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.Member',
      '10': 'members'
    },
  ],
  '7': {},
};

/// Descriptor for `MemberAddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberAddResponseDescriptor = $convert.base64Decode(
    'ChFNZW1iZXJBZGRSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG'
    '9uc2VIZWFkZXJSBmhlYWRlchIsCgZtZW1iZXIYAiABKAsyFC5ldGNkc2VydmVycGIuTWVtYmVy'
    'UgZtZW1iZXISLgoHbWVtYmVycxgDIAMoCzIULmV0Y2RzZXJ2ZXJwYi5NZW1iZXJSB21lbWJlcn'
    'M6B4K1GAMzLjA=');

@$core.Deprecated('Use memberRemoveRequestDescriptor instead')
const MemberRemoveRequest$json = {
  '1': 'MemberRemoveRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
  ],
  '7': {},
};

/// Descriptor for `MemberRemoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberRemoveRequestDescriptor =
    $convert.base64Decode(
        'ChNNZW1iZXJSZW1vdmVSZXF1ZXN0Eg4KAklEGAEgASgEUgJJRDoHgrUYAzMuMA==');

@$core.Deprecated('Use memberRemoveResponseDescriptor instead')
const MemberRemoveResponse$json = {
  '1': 'MemberRemoveResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'members',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.Member',
      '10': 'members'
    },
  ],
  '7': {},
};

/// Descriptor for `MemberRemoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberRemoveResponseDescriptor = $convert.base64Decode(
    'ChRNZW1iZXJSZW1vdmVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUm'
    'VzcG9uc2VIZWFkZXJSBmhlYWRlchIuCgdtZW1iZXJzGAIgAygLMhQuZXRjZHNlcnZlcnBiLk1l'
    'bWJlclIHbWVtYmVyczoHgrUYAzMuMA==');

@$core.Deprecated('Use memberUpdateRequestDescriptor instead')
const MemberUpdateRequest$json = {
  '1': 'MemberUpdateRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
    {'1': 'peerURLs', '3': 2, '4': 3, '5': 9, '10': 'peerURLs'},
  ],
  '7': {},
};

/// Descriptor for `MemberUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberUpdateRequestDescriptor = $convert.base64Decode(
    'ChNNZW1iZXJVcGRhdGVSZXF1ZXN0Eg4KAklEGAEgASgEUgJJRBIaCghwZWVyVVJMcxgCIAMoCV'
    'IIcGVlclVSTHM6B4K1GAMzLjA=');

@$core.Deprecated('Use memberUpdateResponseDescriptor instead')
const MemberUpdateResponse$json = {
  '1': 'MemberUpdateResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'members',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.Member',
      '8': {},
      '10': 'members'
    },
  ],
  '7': {},
};

/// Descriptor for `MemberUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberUpdateResponseDescriptor = $convert.base64Decode(
    'ChRNZW1iZXJVcGRhdGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUm'
    'VzcG9uc2VIZWFkZXJSBmhlYWRlchI3CgdtZW1iZXJzGAIgAygLMhQuZXRjZHNlcnZlcnBiLk1l'
    'bWJlckIHirUYAzMuMVIHbWVtYmVyczoHgrUYAzMuMA==');

@$core.Deprecated('Use memberListRequestDescriptor instead')
const MemberListRequest$json = {
  '1': 'MemberListRequest',
  '2': [
    {
      '1': 'linearizable',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'linearizable'
    },
  ],
  '7': {},
};

/// Descriptor for `MemberListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberListRequestDescriptor = $convert.base64Decode(
    'ChFNZW1iZXJMaXN0UmVxdWVzdBIrCgxsaW5lYXJpemFibGUYASABKAhCB4q1GAMzLjVSDGxpbm'
    'Vhcml6YWJsZToHgrUYAzMuMA==');

@$core.Deprecated('Use memberListResponseDescriptor instead')
const MemberListResponse$json = {
  '1': 'MemberListResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'members',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.Member',
      '10': 'members'
    },
  ],
  '7': {},
};

/// Descriptor for `MemberListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberListResponseDescriptor = $convert.base64Decode(
    'ChJNZW1iZXJMaXN0UmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXISLgoHbWVtYmVycxgCIAMoCzIULmV0Y2RzZXJ2ZXJwYi5NZW1i'
    'ZXJSB21lbWJlcnM6B4K1GAMzLjA=');

@$core.Deprecated('Use memberPromoteRequestDescriptor instead')
const MemberPromoteRequest$json = {
  '1': 'MemberPromoteRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
  ],
  '7': {},
};

/// Descriptor for `MemberPromoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberPromoteRequestDescriptor =
    $convert.base64Decode(
        'ChRNZW1iZXJQcm9tb3RlUmVxdWVzdBIOCgJJRBgBIAEoBFICSUQ6B4K1GAMzLjQ=');

@$core.Deprecated('Use memberPromoteResponseDescriptor instead')
const MemberPromoteResponse$json = {
  '1': 'MemberPromoteResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'members',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.Member',
      '10': 'members'
    },
  ],
  '7': {},
};

/// Descriptor for `MemberPromoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberPromoteResponseDescriptor = $convert.base64Decode(
    'ChVNZW1iZXJQcm9tb3RlUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLl'
    'Jlc3BvbnNlSGVhZGVyUgZoZWFkZXISLgoHbWVtYmVycxgCIAMoCzIULmV0Y2RzZXJ2ZXJwYi5N'
    'ZW1iZXJSB21lbWJlcnM6B4K1GAMzLjQ=');

@$core.Deprecated('Use defragmentRequestDescriptor instead')
const DefragmentRequest$json = {
  '1': 'DefragmentRequest',
  '7': {},
};

/// Descriptor for `DefragmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defragmentRequestDescriptor =
    $convert.base64Decode('ChFEZWZyYWdtZW50UmVxdWVzdDoHgrUYAzMuMA==');

@$core.Deprecated('Use defragmentResponseDescriptor instead')
const DefragmentResponse$json = {
  '1': 'DefragmentResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `DefragmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defragmentResponseDescriptor = $convert.base64Decode(
    'ChJEZWZyYWdtZW50UmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXI6B4K1GAMzLjA=');

@$core.Deprecated('Use moveLeaderRequestDescriptor instead')
const MoveLeaderRequest$json = {
  '1': 'MoveLeaderRequest',
  '2': [
    {'1': 'targetID', '3': 1, '4': 1, '5': 4, '10': 'targetID'},
  ],
  '7': {},
};

/// Descriptor for `MoveLeaderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveLeaderRequestDescriptor = $convert.base64Decode(
    'ChFNb3ZlTGVhZGVyUmVxdWVzdBIaCgh0YXJnZXRJRBgBIAEoBFIIdGFyZ2V0SUQ6B4K1GAMzLj'
    'M=');

@$core.Deprecated('Use moveLeaderResponseDescriptor instead')
const MoveLeaderResponse$json = {
  '1': 'MoveLeaderResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `MoveLeaderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveLeaderResponseDescriptor = $convert.base64Decode(
    'ChJNb3ZlTGVhZGVyUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXI6B4K1GAMzLjM=');

@$core.Deprecated('Use alarmRequestDescriptor instead')
const AlarmRequest$json = {
  '1': 'AlarmRequest',
  '2': [
    {
      '1': 'action',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.AlarmRequest.AlarmAction',
      '10': 'action'
    },
    {'1': 'memberID', '3': 2, '4': 1, '5': 4, '10': 'memberID'},
    {
      '1': 'alarm',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.AlarmType',
      '10': 'alarm'
    },
  ],
  '4': [AlarmRequest_AlarmAction$json],
  '7': {},
};

@$core.Deprecated('Use alarmRequestDescriptor instead')
const AlarmRequest_AlarmAction$json = {
  '1': 'AlarmAction',
  '2': [
    {'1': 'GET', '2': 0},
    {'1': 'ACTIVATE', '2': 1},
    {'1': 'DEACTIVATE', '2': 2},
  ],
  '3': {},
};

/// Descriptor for `AlarmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alarmRequestDescriptor = $convert.base64Decode(
    'CgxBbGFybVJlcXVlc3QSPgoGYWN0aW9uGAEgASgOMiYuZXRjZHNlcnZlcnBiLkFsYXJtUmVxdW'
    'VzdC5BbGFybUFjdGlvblIGYWN0aW9uEhoKCG1lbWJlcklEGAIgASgEUghtZW1iZXJJRBItCgVh'
    'bGFybRgDIAEoDjIXLmV0Y2RzZXJ2ZXJwYi5BbGFybVR5cGVSBWFsYXJtIj0KC0FsYXJtQWN0aW'
    '9uEgcKA0dFVBAAEgwKCEFDVElWQVRFEAESDgoKREVBQ1RJVkFURRACGgeStRgDMy4wOgeCtRgD'
    'My4w');

@$core.Deprecated('Use alarmMemberDescriptor instead')
const AlarmMember$json = {
  '1': 'AlarmMember',
  '2': [
    {'1': 'memberID', '3': 1, '4': 1, '5': 4, '10': 'memberID'},
    {
      '1': 'alarm',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.AlarmType',
      '10': 'alarm'
    },
  ],
  '7': {},
};

/// Descriptor for `AlarmMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alarmMemberDescriptor = $convert.base64Decode(
    'CgtBbGFybU1lbWJlchIaCghtZW1iZXJJRBgBIAEoBFIIbWVtYmVySUQSLQoFYWxhcm0YAiABKA'
    '4yFy5ldGNkc2VydmVycGIuQWxhcm1UeXBlUgVhbGFybToHgrUYAzMuMA==');

@$core.Deprecated('Use alarmResponseDescriptor instead')
const AlarmResponse$json = {
  '1': 'AlarmResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {
      '1': 'alarms',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.etcdserverpb.AlarmMember',
      '10': 'alarms'
    },
  ],
  '7': {},
};

/// Descriptor for `AlarmResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alarmResponseDescriptor = $convert.base64Decode(
    'Cg1BbGFybVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZU'
    'hlYWRlclIGaGVhZGVyEjEKBmFsYXJtcxgCIAMoCzIZLmV0Y2RzZXJ2ZXJwYi5BbGFybU1lbWJl'
    'clIGYWxhcm1zOgeCtRgDMy4w');

@$core.Deprecated('Use downgradeRequestDescriptor instead')
const DowngradeRequest$json = {
  '1': 'DowngradeRequest',
  '2': [
    {
      '1': 'action',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.etcdserverpb.DowngradeRequest.DowngradeAction',
      '10': 'action'
    },
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': [DowngradeRequest_DowngradeAction$json],
  '7': {},
};

@$core.Deprecated('Use downgradeRequestDescriptor instead')
const DowngradeRequest_DowngradeAction$json = {
  '1': 'DowngradeAction',
  '2': [
    {'1': 'VALIDATE', '2': 0},
    {'1': 'ENABLE', '2': 1},
    {'1': 'CANCEL', '2': 2},
  ],
  '3': {},
};

/// Descriptor for `DowngradeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downgradeRequestDescriptor = $convert.base64Decode(
    'ChBEb3duZ3JhZGVSZXF1ZXN0EkYKBmFjdGlvbhgBIAEoDjIuLmV0Y2RzZXJ2ZXJwYi5Eb3duZ3'
    'JhZGVSZXF1ZXN0LkRvd25ncmFkZUFjdGlvblIGYWN0aW9uEhgKB3ZlcnNpb24YAiABKAlSB3Zl'
    'cnNpb24iQAoPRG93bmdyYWRlQWN0aW9uEgwKCFZBTElEQVRFEAASCgoGRU5BQkxFEAESCgoGQ0'
    'FOQ0VMEAIaB5K1GAMzLjU6B4K1GAMzLjU=');

@$core.Deprecated('Use downgradeResponseDescriptor instead')
const DowngradeResponse$json = {
  '1': 'DowngradeResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
  '7': {},
};

/// Descriptor for `DowngradeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downgradeResponseDescriptor = $convert.base64Decode(
    'ChFEb3duZ3JhZGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG'
    '9uc2VIZWFkZXJSBmhlYWRlchIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uOgeCtRgDMy41');

@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = {
  '1': 'StatusRequest',
  '7': {},
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor =
    $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0OgeCtRgDMy4w');

@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = {
  '1': 'StatusResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'dbSize', '3': 3, '4': 1, '5': 3, '10': 'dbSize'},
    {'1': 'leader', '3': 4, '4': 1, '5': 4, '10': 'leader'},
    {'1': 'raftIndex', '3': 5, '4': 1, '5': 4, '10': 'raftIndex'},
    {'1': 'raftTerm', '3': 6, '4': 1, '5': 4, '10': 'raftTerm'},
    {
      '1': 'raftAppliedIndex',
      '3': 7,
      '4': 1,
      '5': 4,
      '8': {},
      '10': 'raftAppliedIndex'
    },
    {'1': 'errors', '3': 8, '4': 3, '5': 9, '8': {}, '10': 'errors'},
    {'1': 'dbSizeInUse', '3': 9, '4': 1, '5': 3, '8': {}, '10': 'dbSizeInUse'},
    {'1': 'isLearner', '3': 10, '4': 1, '5': 8, '8': {}, '10': 'isLearner'},
    {
      '1': 'storageVersion',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'storageVersion'
    },
  ],
  '7': {},
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2'
    'VIZWFkZXJSBmhlYWRlchIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEhYKBmRiU2l6ZRgDIAEo'
    'A1IGZGJTaXplEhYKBmxlYWRlchgEIAEoBFIGbGVhZGVyEhwKCXJhZnRJbmRleBgFIAEoBFIJcm'
    'FmdEluZGV4EhoKCHJhZnRUZXJtGAYgASgEUghyYWZ0VGVybRIzChByYWZ0QXBwbGllZEluZGV4'
    'GAcgASgEQgeKtRgDMy40UhByYWZ0QXBwbGllZEluZGV4Eh8KBmVycm9ycxgIIAMoCUIHirUYAz'
    'MuNFIGZXJyb3JzEikKC2RiU2l6ZUluVXNlGAkgASgDQgeKtRgDMy40UgtkYlNpemVJblVzZRIl'
    'Cglpc0xlYXJuZXIYCiABKAhCB4q1GAMzLjRSCWlzTGVhcm5lchIvCg5zdG9yYWdlVmVyc2lvbh'
    'gLIAEoCUIHirUYAzMuNlIOc3RvcmFnZVZlcnNpb246B4K1GAMzLjA=');

@$core.Deprecated('Use authEnableRequestDescriptor instead')
const AuthEnableRequest$json = {
  '1': 'AuthEnableRequest',
  '7': {},
};

/// Descriptor for `AuthEnableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authEnableRequestDescriptor =
    $convert.base64Decode('ChFBdXRoRW5hYmxlUmVxdWVzdDoHgrUYAzMuMA==');

@$core.Deprecated('Use authDisableRequestDescriptor instead')
const AuthDisableRequest$json = {
  '1': 'AuthDisableRequest',
  '7': {},
};

/// Descriptor for `AuthDisableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDisableRequestDescriptor =
    $convert.base64Decode('ChJBdXRoRGlzYWJsZVJlcXVlc3Q6B4K1GAMzLjA=');

@$core.Deprecated('Use authStatusRequestDescriptor instead')
const AuthStatusRequest$json = {
  '1': 'AuthStatusRequest',
  '7': {},
};

/// Descriptor for `AuthStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authStatusRequestDescriptor =
    $convert.base64Decode('ChFBdXRoU3RhdHVzUmVxdWVzdDoHgrUYAzMuNQ==');

@$core.Deprecated('Use authenticateRequestDescriptor instead')
const AuthenticateRequest$json = {
  '1': 'AuthenticateRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
  '7': {},
};

/// Descriptor for `AuthenticateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateRequestDescriptor = $convert.base64Decode(
    'ChNBdXRoZW50aWNhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIcGFzc3dvcmQYAi'
    'ABKAlSCHBhc3N3b3JkOgeCtRgDMy4w');

@$core.Deprecated('Use authUserAddRequestDescriptor instead')
const AuthUserAddRequest$json = {
  '1': 'AuthUserAddRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {
      '1': 'options',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.authpb.UserAddOptions',
      '8': {},
      '10': 'options'
    },
    {
      '1': 'hashedPassword',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'hashedPassword'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserAddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserAddRequestDescriptor = $convert.base64Decode(
    'ChJBdXRoVXNlckFkZFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIaCghwYXNzd29yZBgCIA'
    'EoCVIIcGFzc3dvcmQSOQoHb3B0aW9ucxgDIAEoCzIWLmF1dGhwYi5Vc2VyQWRkT3B0aW9uc0IH'
    'irUYAzMuNFIHb3B0aW9ucxIvCg5oYXNoZWRQYXNzd29yZBgEIAEoCUIHirUYAzMuNVIOaGFzaG'
    'VkUGFzc3dvcmQ6B4K1GAMzLjA=');

@$core.Deprecated('Use authUserGetRequestDescriptor instead')
const AuthUserGetRequest$json = {
  '1': 'AuthUserGetRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `AuthUserGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGetRequestDescriptor =
    $convert.base64Decode(
        'ChJBdXRoVXNlckdldFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZToHgrUYAzMuMA==');

@$core.Deprecated('Use authUserDeleteRequestDescriptor instead')
const AuthUserDeleteRequest$json = {
  '1': 'AuthUserDeleteRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `AuthUserDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserDeleteRequestDescriptor = $convert.base64Decode(
    'ChVBdXRoVXNlckRlbGV0ZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZToHgrUYAzMuMA==');

@$core.Deprecated('Use authUserChangePasswordRequestDescriptor instead')
const AuthUserChangePasswordRequest$json = {
  '1': 'AuthUserChangePasswordRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {
      '1': 'hashedPassword',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'hashedPassword'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserChangePasswordRequestDescriptor =
    $convert.base64Decode(
        'Ch1BdXRoVXNlckNoYW5nZVBhc3N3b3JkUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCH'
        'Bhc3N3b3JkGAIgASgJUghwYXNzd29yZBIvCg5oYXNoZWRQYXNzd29yZBgDIAEoCUIHirUYAzMu'
        'NVIOaGFzaGVkUGFzc3dvcmQ6B4K1GAMzLjA=');

@$core.Deprecated('Use authUserGrantRoleRequestDescriptor instead')
const AuthUserGrantRoleRequest$json = {
  '1': 'AuthUserGrantRoleRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
  '7': {},
};

/// Descriptor for `AuthUserGrantRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGrantRoleRequestDescriptor =
    $convert.base64Decode(
        'ChhBdXRoVXNlckdyYW50Um9sZVJlcXVlc3QSEgoEdXNlchgBIAEoCVIEdXNlchISCgRyb2xlGA'
        'IgASgJUgRyb2xlOgeCtRgDMy4w');

@$core.Deprecated('Use authUserRevokeRoleRequestDescriptor instead')
const AuthUserRevokeRoleRequest$json = {
  '1': 'AuthUserRevokeRoleRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
  '7': {},
};

/// Descriptor for `AuthUserRevokeRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserRevokeRoleRequestDescriptor =
    $convert.base64Decode(
        'ChlBdXRoVXNlclJldm9rZVJvbGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEcm9sZR'
        'gCIAEoCVIEcm9sZToHgrUYAzMuMA==');

@$core.Deprecated('Use authRoleAddRequestDescriptor instead')
const AuthRoleAddRequest$json = {
  '1': 'AuthRoleAddRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `AuthRoleAddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleAddRequestDescriptor =
    $convert.base64Decode(
        'ChJBdXRoUm9sZUFkZFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZToHgrUYAzMuMA==');

@$core.Deprecated('Use authRoleGetRequestDescriptor instead')
const AuthRoleGetRequest$json = {
  '1': 'AuthRoleGetRequest',
  '2': [
    {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
  ],
  '7': {},
};

/// Descriptor for `AuthRoleGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGetRequestDescriptor =
    $convert.base64Decode(
        'ChJBdXRoUm9sZUdldFJlcXVlc3QSEgoEcm9sZRgBIAEoCVIEcm9sZToHgrUYAzMuMA==');

@$core.Deprecated('Use authUserListRequestDescriptor instead')
const AuthUserListRequest$json = {
  '1': 'AuthUserListRequest',
  '7': {},
};

/// Descriptor for `AuthUserListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserListRequestDescriptor =
    $convert.base64Decode('ChNBdXRoVXNlckxpc3RSZXF1ZXN0OgeCtRgDMy4w');

@$core.Deprecated('Use authRoleListRequestDescriptor instead')
const AuthRoleListRequest$json = {
  '1': 'AuthRoleListRequest',
  '7': {},
};

/// Descriptor for `AuthRoleListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleListRequestDescriptor =
    $convert.base64Decode('ChNBdXRoUm9sZUxpc3RSZXF1ZXN0OgeCtRgDMy4w');

@$core.Deprecated('Use authRoleDeleteRequestDescriptor instead')
const AuthRoleDeleteRequest$json = {
  '1': 'AuthRoleDeleteRequest',
  '2': [
    {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
  ],
  '7': {},
};

/// Descriptor for `AuthRoleDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleDeleteRequestDescriptor = $convert.base64Decode(
    'ChVBdXRoUm9sZURlbGV0ZVJlcXVlc3QSEgoEcm9sZRgBIAEoCVIEcm9sZToHgrUYAzMuMA==');

@$core.Deprecated('Use authRoleGrantPermissionRequestDescriptor instead')
const AuthRoleGrantPermissionRequest$json = {
  '1': 'AuthRoleGrantPermissionRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'perm',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.authpb.Permission',
      '10': 'perm'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthRoleGrantPermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGrantPermissionRequestDescriptor =
    $convert.base64Decode(
        'Ch5BdXRoUm9sZUdyYW50UGVybWlzc2lvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRImCg'
        'RwZXJtGAIgASgLMhIuYXV0aHBiLlBlcm1pc3Npb25SBHBlcm06B4K1GAMzLjA=');

@$core.Deprecated('Use authRoleRevokePermissionRequestDescriptor instead')
const AuthRoleRevokePermissionRequest$json = {
  '1': 'AuthRoleRevokePermissionRequest',
  '2': [
    {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
    {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    {'1': 'range_end', '3': 3, '4': 1, '5': 12, '10': 'rangeEnd'},
  ],
  '7': {},
};

/// Descriptor for `AuthRoleRevokePermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleRevokePermissionRequestDescriptor =
    $convert.base64Decode(
        'Ch9BdXRoUm9sZVJldm9rZVBlcm1pc3Npb25SZXF1ZXN0EhIKBHJvbGUYASABKAlSBHJvbGUSEA'
        'oDa2V5GAIgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAMgASgMUghyYW5nZUVuZDoHgrUYAzMuMA==');

@$core.Deprecated('Use authEnableResponseDescriptor instead')
const AuthEnableResponse$json = {
  '1': 'AuthEnableResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthEnableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authEnableResponseDescriptor = $convert.base64Decode(
    'ChJBdXRoRW5hYmxlUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXI6B4K1GAMzLjA=');

@$core.Deprecated('Use authDisableResponseDescriptor instead')
const AuthDisableResponse$json = {
  '1': 'AuthDisableResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthDisableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDisableResponseDescriptor = $convert.base64Decode(
    'ChNBdXRoRGlzYWJsZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authStatusResponseDescriptor instead')
const AuthStatusResponse$json = {
  '1': 'AuthStatusResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'enabled', '3': 2, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'authRevision', '3': 3, '4': 1, '5': 4, '10': 'authRevision'},
  ],
  '7': {},
};

/// Descriptor for `AuthStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authStatusResponseDescriptor = $convert.base64Decode(
    'ChJBdXRoU3RhdHVzUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3'
    'BvbnNlSGVhZGVyUgZoZWFkZXISGAoHZW5hYmxlZBgCIAEoCFIHZW5hYmxlZBIiCgxhdXRoUmV2'
    'aXNpb24YAyABKARSDGF1dGhSZXZpc2lvbjoHgrUYAzMuNQ==');

@$core.Deprecated('Use authenticateResponseDescriptor instead')
const AuthenticateResponse$json = {
  '1': 'AuthenticateResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
  '7': {},
};

/// Descriptor for `AuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateResponseDescriptor = $convert.base64Decode(
    'ChRBdXRoZW50aWNhdGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUm'
    'VzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgV0b2tlbhgCIAEoCVIFdG9rZW46B4K1GAMzLjA=');

@$core.Deprecated('Use authUserAddResponseDescriptor instead')
const AuthUserAddResponse$json = {
  '1': 'AuthUserAddResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserAddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserAddResponseDescriptor = $convert.base64Decode(
    'ChNBdXRoVXNlckFkZFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authUserGetResponseDescriptor instead')
const AuthUserGetResponse$json = {
  '1': 'AuthUserGetResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
  ],
  '7': {},
};

/// Descriptor for `AuthUserGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGetResponseDescriptor = $convert.base64Decode(
    'ChNBdXRoVXNlckdldFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyEhQKBXJvbGVzGAIgAygJUgVyb2xlczoHgrUYAzMuMA==');

@$core.Deprecated('Use authUserDeleteResponseDescriptor instead')
const AuthUserDeleteResponse$json = {
  '1': 'AuthUserDeleteResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserDeleteResponseDescriptor =
    $convert.base64Decode(
        'ChZBdXRoVXNlckRlbGV0ZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi'
        '5SZXNwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authUserChangePasswordResponseDescriptor instead')
const AuthUserChangePasswordResponse$json = {
  '1': 'AuthUserChangePasswordResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserChangePasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserChangePasswordResponseDescriptor =
    $convert.base64Decode(
        'Ch5BdXRoVXNlckNoYW5nZVBhc3N3b3JkUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZH'
        'NlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI6B4K1GAMzLjA=');

@$core.Deprecated('Use authUserGrantRoleResponseDescriptor instead')
const AuthUserGrantRoleResponse$json = {
  '1': 'AuthUserGrantRoleResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserGrantRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGrantRoleResponseDescriptor =
    $convert.base64Decode(
        'ChlBdXRoVXNlckdyYW50Um9sZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZX'
        'JwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authUserRevokeRoleResponseDescriptor instead')
const AuthUserRevokeRoleResponse$json = {
  '1': 'AuthUserRevokeRoleResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthUserRevokeRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserRevokeRoleResponseDescriptor =
    $convert.base64Decode(
        'ChpBdXRoVXNlclJldm9rZVJvbGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2Vydm'
        'VycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcjoHgrUYAzMuMA==');

@$core.Deprecated('Use authRoleAddResponseDescriptor instead')
const AuthRoleAddResponse$json = {
  '1': 'AuthRoleAddResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthRoleAddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleAddResponseDescriptor = $convert.base64Decode(
    'ChNBdXRoUm9sZUFkZFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authRoleGetResponseDescriptor instead')
const AuthRoleGetResponse$json = {
  '1': 'AuthRoleGetResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '8': {},
      '10': 'header'
    },
    {
      '1': 'perm',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.authpb.Permission',
      '8': {},
      '10': 'perm'
    },
  ],
};

/// Descriptor for `AuthRoleGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGetResponseDescriptor = $convert.base64Decode(
    'ChNBdXRoUm9sZUdldFJlc3BvbnNlEj0KBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZX'
    'Nwb25zZUhlYWRlckIHirUYAzMuMFIGaGVhZGVyEi8KBHBlcm0YAiADKAsyEi5hdXRocGIuUGVy'
    'bWlzc2lvbkIHirUYAzMuMFIEcGVybQ==');

@$core.Deprecated('Use authRoleListResponseDescriptor instead')
const AuthRoleListResponse$json = {
  '1': 'AuthRoleListResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
  ],
  '7': {},
};

/// Descriptor for `AuthRoleListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleListResponseDescriptor = $convert.base64Decode(
    'ChRBdXRoUm9sZUxpc3RSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUm'
    'VzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgVyb2xlcxgCIAMoCVIFcm9sZXM6B4K1GAMzLjA=');

@$core.Deprecated('Use authUserListResponseDescriptor instead')
const AuthUserListResponse$json = {
  '1': 'AuthUserListResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
    {'1': 'users', '3': 2, '4': 3, '5': 9, '10': 'users'},
  ],
  '7': {},
};

/// Descriptor for `AuthUserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserListResponseDescriptor = $convert.base64Decode(
    'ChRBdXRoVXNlckxpc3RSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUm'
    'VzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgV1c2VycxgCIAMoCVIFdXNlcnM6B4K1GAMzLjA=');

@$core.Deprecated('Use authRoleDeleteResponseDescriptor instead')
const AuthRoleDeleteResponse$json = {
  '1': 'AuthRoleDeleteResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthRoleDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleDeleteResponseDescriptor =
    $convert.base64Decode(
        'ChZBdXRoUm9sZURlbGV0ZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi'
        '5SZXNwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authRoleGrantPermissionResponseDescriptor instead')
const AuthRoleGrantPermissionResponse$json = {
  '1': 'AuthRoleGrantPermissionResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthRoleGrantPermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGrantPermissionResponseDescriptor =
    $convert.base64Decode(
        'Ch9BdXRoUm9sZUdyYW50UGVybWlzc2lvblJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2'
        'RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyOgeCtRgDMy4w');

@$core.Deprecated('Use authRoleRevokePermissionResponseDescriptor instead')
const AuthRoleRevokePermissionResponse$json = {
  '1': 'AuthRoleRevokePermissionResponse',
  '2': [
    {
      '1': 'header',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.etcdserverpb.ResponseHeader',
      '10': 'header'
    },
  ],
  '7': {},
};

/// Descriptor for `AuthRoleRevokePermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleRevokePermissionResponseDescriptor =
    $convert.base64Decode(
        'CiBBdXRoUm9sZVJldm9rZVBlcm1pc3Npb25SZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldG'
        'Nkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcjoHgrUYAzMuMA==');
