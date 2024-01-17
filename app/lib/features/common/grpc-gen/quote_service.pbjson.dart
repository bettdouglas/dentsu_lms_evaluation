///
//  Generated code. Do not modify.
//  source: quote_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listQuotesRequestDescriptor instead')
const ListQuotesRequest$json = const {
  '1': 'ListQuotesRequest',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListQuotesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQuotesRequestDescriptor = $convert.base64Decode('ChFMaXN0UXVvdGVzUmVxdWVzdBIWCgZwYXJlbnQYASABKAlSBnBhcmVudBIbCglwYWdlX3NpemUYAiABKAVSCHBhZ2VTaXplEh0KCnBhZ2VfdG9rZW4YAyABKAlSCXBhZ2VUb2tlbg==');
@$core.Deprecated('Use listQuotesResponseDescriptor instead')
const ListQuotesResponse$json = const {
  '1': 'ListQuotesResponse',
  '2': const [
    const {'1': 'quotes', '3': 1, '4': 3, '5': 11, '6': '.lms.Quote', '10': 'quotes'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListQuotesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQuotesResponseDescriptor = $convert.base64Decode('ChJMaXN0UXVvdGVzUmVzcG9uc2USIgoGcXVvdGVzGAEgAygLMgoubG1zLlF1b3RlUgZxdW90ZXMSJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2Vu');
@$core.Deprecated('Use getQuoteRequestDescriptor instead')
const GetQuoteRequest$json = const {
  '1': 'GetQuoteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetQuoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQuoteRequestDescriptor = $convert.base64Decode('Cg9HZXRRdW90ZVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use createQuoteRequestDescriptor instead')
const CreateQuoteRequest$json = const {
  '1': 'CreateQuoteRequest',
  '2': const [
    const {'1': 'quote', '3': 1, '4': 1, '5': 11, '6': '.lms.Quote', '10': 'quote'},
    const {'1': 'lead_id', '3': 2, '4': 1, '5': 5, '10': 'leadId'},
  ],
};

/// Descriptor for `CreateQuoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createQuoteRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVRdW90ZVJlcXVlc3QSIAoFcXVvdGUYASABKAsyCi5sbXMuUXVvdGVSBXF1b3RlEhcKB2xlYWRfaWQYAiABKAVSBmxlYWRJZA==');
@$core.Deprecated('Use updateQuoteRequestDescriptor instead')
const UpdateQuoteRequest$json = const {
  '1': 'UpdateQuoteRequest',
  '2': const [
    const {'1': 'quote', '3': 1, '4': 1, '5': 11, '6': '.lms.Quote', '10': 'quote'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateQuoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateQuoteRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVRdW90ZVJlcXVlc3QSIAoFcXVvdGUYASABKAsyCi5sbXMuUXVvdGVSBXF1b3RlEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteQuoteRequestDescriptor instead')
const DeleteQuoteRequest$json = const {
  '1': 'DeleteQuoteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteQuoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteQuoteRequestDescriptor = $convert.base64Decode('ChJEZWxldGVRdW90ZVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
