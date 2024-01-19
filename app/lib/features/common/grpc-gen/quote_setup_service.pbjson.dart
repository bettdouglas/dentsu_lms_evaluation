///
//  Generated code. Do not modify.
//  source: quote_setup_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listQuoteSetupsRequestDescriptor instead')
const ListQuoteSetupsRequest$json = const {
  '1': 'ListQuoteSetupsRequest',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListQuoteSetupsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQuoteSetupsRequestDescriptor =
    $convert.base64Decode(
        'ChZMaXN0UXVvdGVTZXR1cHNSZXF1ZXN0EhYKBnBhcmVudBgBIAEoCVIGcGFyZW50EhsKCXBhZ2Vfc2l6ZRgCIAEoBVIIcGFnZVNpemUSHQoKcGFnZV90b2tlbhgDIAEoCVIJcGFnZVRva2Vu');
@$core.Deprecated('Use listQuoteSetupsResponseDescriptor instead')
const ListQuoteSetupsResponse$json = const {
  '1': 'ListQuoteSetupsResponse',
  '2': const [
    const {
      '1': 'QuoteSetups',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.lms.QuoteSetup',
      '10': 'QuoteSetups'
    },
    const {
      '1': 'next_page_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'nextPageToken'
    },
  ],
};

/// Descriptor for `ListQuoteSetupsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQuoteSetupsResponseDescriptor =
    $convert.base64Decode(
        'ChdMaXN0UXVvdGVTZXR1cHNSZXNwb25zZRIxCgtRdW90ZVNldHVwcxgBIAMoCzIPLmxtcy5RdW90ZVNldHVwUgtRdW90ZVNldHVwcxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4=');
@$core.Deprecated('Use getQuoteSetupRequestDescriptor instead')
const GetQuoteSetupRequest$json = const {
  '1': 'GetQuoteSetupRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetQuoteSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQuoteSetupRequestDescriptor = $convert
    .base64Decode('ChRHZXRRdW90ZVNldHVwUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use createQuoteSetupRequestDescriptor instead')
const CreateQuoteSetupRequest$json = const {
  '1': 'CreateQuoteSetupRequest',
  '2': const [
    const {
      '1': 'QuoteSetup',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.lms.QuoteSetup',
      '10': 'QuoteSetup'
    },
  ],
};

/// Descriptor for `CreateQuoteSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createQuoteSetupRequestDescriptor =
    $convert.base64Decode(
        'ChdDcmVhdGVRdW90ZVNldHVwUmVxdWVzdBIvCgpRdW90ZVNldHVwGAEgASgLMg8ubG1zLlF1b3RlU2V0dXBSClF1b3RlU2V0dXA=');
@$core.Deprecated('Use updateQuoteSetupRequestDescriptor instead')
const UpdateQuoteSetupRequest$json = const {
  '1': 'UpdateQuoteSetupRequest',
  '2': const [
    const {
      '1': 'QuoteSetup',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.lms.QuoteSetup',
      '10': 'QuoteSetup'
    },
    const {
      '1': 'update_mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FieldMask',
      '10': 'updateMask'
    },
  ],
};

/// Descriptor for `UpdateQuoteSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateQuoteSetupRequestDescriptor =
    $convert.base64Decode(
        'ChdVcGRhdGVRdW90ZVNldHVwUmVxdWVzdBIvCgpRdW90ZVNldHVwGAEgASgLMg8ubG1zLlF1b3RlU2V0dXBSClF1b3RlU2V0dXASOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteQuoteSetupRequestDescriptor instead')
const DeleteQuoteSetupRequest$json = const {
  '1': 'DeleteQuoteSetupRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteQuoteSetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteQuoteSetupRequestDescriptor = $convert
    .base64Decode('ChdEZWxldGVRdW90ZVNldHVwUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
