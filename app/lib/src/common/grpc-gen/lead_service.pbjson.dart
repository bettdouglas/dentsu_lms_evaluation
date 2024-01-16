///
//  Generated code. Do not modify.
//  source: lead_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listLeadsRequestDescriptor instead')
const ListLeadsRequest$json = const {
  '1': 'ListLeadsRequest',
  '2': const [
    const {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListLeadsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLeadsRequestDescriptor = $convert.base64Decode('ChBMaXN0TGVhZHNSZXF1ZXN0EhsKCXBhZ2Vfc2l6ZRgBIAEoBVIIcGFnZVNpemUSHQoKcGFnZV90b2tlbhgCIAEoCVIJcGFnZVRva2Vu');
@$core.Deprecated('Use listLeadsResponseDescriptor instead')
const ListLeadsResponse$json = const {
  '1': 'ListLeadsResponse',
  '2': const [
    const {'1': 'leads', '3': 1, '4': 3, '5': 11, '6': '.lms.Lead', '10': 'leads'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListLeadsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLeadsResponseDescriptor = $convert.base64Decode('ChFMaXN0TGVhZHNSZXNwb25zZRIfCgVsZWFkcxgBIAMoCzIJLmxtcy5MZWFkUgVsZWFkcxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4=');
@$core.Deprecated('Use getLeadRequestDescriptor instead')
const GetLeadRequest$json = const {
  '1': 'GetLeadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetLeadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLeadRequestDescriptor = $convert.base64Decode('Cg5HZXRMZWFkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use createLeadRequestDescriptor instead')
const CreateLeadRequest$json = const {
  '1': 'CreateLeadRequest',
  '2': const [
    const {'1': 'lead', '3': 1, '4': 1, '5': 11, '6': '.lms.Lead', '10': 'lead'},
  ],
};

/// Descriptor for `CreateLeadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createLeadRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVMZWFkUmVxdWVzdBIdCgRsZWFkGAEgASgLMgkubG1zLkxlYWRSBGxlYWQ=');
@$core.Deprecated('Use createLeadResponseDescriptor instead')
const CreateLeadResponse$json = const {
  '1': 'CreateLeadResponse',
  '2': const [
    const {'1': 'lead', '3': 1, '4': 1, '5': 11, '6': '.lms.Lead', '10': 'lead'},
  ],
};

/// Descriptor for `CreateLeadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createLeadResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVMZWFkUmVzcG9uc2USHQoEbGVhZBgBIAEoCzIJLmxtcy5MZWFkUgRsZWFk');
@$core.Deprecated('Use updateLeadRequestDescriptor instead')
const UpdateLeadRequest$json = const {
  '1': 'UpdateLeadRequest',
  '2': const [
    const {'1': 'lead', '3': 1, '4': 1, '5': 11, '6': '.lms.Lead', '10': 'lead'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateLeadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLeadRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVMZWFkUmVxdWVzdBIdCgRsZWFkGAEgASgLMgkubG1zLkxlYWRSBGxlYWQSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteLeadRequestDescriptor instead')
const DeleteLeadRequest$json = const {
  '1': 'DeleteLeadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteLeadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteLeadRequestDescriptor = $convert.base64Decode('ChFEZWxldGVMZWFkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
