///
//  Generated code. Do not modify.
//  source: quote_benefit_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listQuoteBenefitsRequestDescriptor instead')
const ListQuoteBenefitsRequest$json = const {
  '1': 'ListQuoteBenefitsRequest',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListQuoteBenefitsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQuoteBenefitsRequestDescriptor = $convert.base64Decode('ChhMaXN0UXVvdGVCZW5lZml0c1JlcXVlc3QSFgoGcGFyZW50GAEgASgJUgZwYXJlbnQSGwoJcGFnZV9zaXplGAIgASgFUghwYWdlU2l6ZRIdCgpwYWdlX3Rva2VuGAMgASgJUglwYWdlVG9rZW4=');
@$core.Deprecated('Use listQuoteBenefitsResponseDescriptor instead')
const ListQuoteBenefitsResponse$json = const {
  '1': 'ListQuoteBenefitsResponse',
  '2': const [
    const {'1': 'quote_benefits', '3': 1, '4': 3, '5': 11, '6': '.lms.QuoteBenefit', '10': 'quoteBenefits'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListQuoteBenefitsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQuoteBenefitsResponseDescriptor = $convert.base64Decode('ChlMaXN0UXVvdGVCZW5lZml0c1Jlc3BvbnNlEjgKDnF1b3RlX2JlbmVmaXRzGAEgAygLMhEubG1zLlF1b3RlQmVuZWZpdFINcXVvdGVCZW5lZml0cxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4=');
@$core.Deprecated('Use getQuoteBenefitRequestDescriptor instead')
const GetQuoteBenefitRequest$json = const {
  '1': 'GetQuoteBenefitRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetQuoteBenefitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQuoteBenefitRequestDescriptor = $convert.base64Decode('ChZHZXRRdW90ZUJlbmVmaXRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');
@$core.Deprecated('Use createQuoteBenefitRequestDescriptor instead')
const CreateQuoteBenefitRequest$json = const {
  '1': 'CreateQuoteBenefitRequest',
  '2': const [
    const {'1': 'quote_benefit', '3': 1, '4': 1, '5': 11, '6': '.lms.QuoteBenefit', '10': 'quoteBenefit'},
  ],
};

/// Descriptor for `CreateQuoteBenefitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createQuoteBenefitRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVRdW90ZUJlbmVmaXRSZXF1ZXN0EjYKDXF1b3RlX2JlbmVmaXQYASABKAsyES5sbXMuUXVvdGVCZW5lZml0UgxxdW90ZUJlbmVmaXQ=');
@$core.Deprecated('Use updateQuoteBenefitRequestDescriptor instead')
const UpdateQuoteBenefitRequest$json = const {
  '1': 'UpdateQuoteBenefitRequest',
  '2': const [
    const {'1': 'quote_benefit', '3': 1, '4': 1, '5': 11, '6': '.lms.QuoteBenefit', '10': 'quoteBenefit'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateQuoteBenefitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateQuoteBenefitRequestDescriptor = $convert.base64Decode('ChlVcGRhdGVRdW90ZUJlbmVmaXRSZXF1ZXN0EjYKDXF1b3RlX2JlbmVmaXQYASABKAsyES5sbXMuUXVvdGVCZW5lZml0UgxxdW90ZUJlbmVmaXQSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteQuoteBenefitRequestDescriptor instead')
const DeleteQuoteBenefitRequest$json = const {
  '1': 'DeleteQuoteBenefitRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteQuoteBenefitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteQuoteBenefitRequestDescriptor = $convert.base64Decode('ChlEZWxldGVRdW90ZUJlbmVmaXRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');
