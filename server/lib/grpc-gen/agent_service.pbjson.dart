///
//  Generated code. Do not modify.
//  source: agent_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listAgentsRequestDescriptor instead')
const ListAgentsRequest$json = const {
  '1': 'ListAgentsRequest',
  '2': const [
    const {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListAgentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAgentsRequestDescriptor = $convert.base64Decode('ChFMaXN0QWdlbnRzUmVxdWVzdBIbCglwYWdlX3NpemUYASABKAVSCHBhZ2VTaXplEh0KCnBhZ2VfdG9rZW4YAiABKAlSCXBhZ2VUb2tlbg==');
@$core.Deprecated('Use listAgentsResponseDescriptor instead')
const ListAgentsResponse$json = const {
  '1': 'ListAgentsResponse',
  '2': const [
    const {'1': 'agents', '3': 1, '4': 3, '5': 11, '6': '.lms.Agent', '10': 'agents'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListAgentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAgentsResponseDescriptor = $convert.base64Decode('ChJMaXN0QWdlbnRzUmVzcG9uc2USIgoGYWdlbnRzGAEgAygLMgoubG1zLkFnZW50UgZhZ2VudHMSJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2Vu');
@$core.Deprecated('Use getAgentRequestDescriptor instead')
const GetAgentRequest$json = const {
  '1': 'GetAgentRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetAgentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentRequestDescriptor = $convert.base64Decode('Cg9HZXRBZ2VudFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use createAgentRequestDescriptor instead')
const CreateAgentRequest$json = const {
  '1': 'CreateAgentRequest',
  '2': const [
    const {'1': 'agent', '3': 1, '4': 1, '5': 11, '6': '.lms.Agent', '10': 'agent'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `CreateAgentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAgentRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVBZ2VudFJlcXVlc3QSIAoFYWdlbnQYASABKAsyCi5sbXMuQWdlbnRSBWFnZW50EhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use createAgentResponseDescriptor instead')
const CreateAgentResponse$json = const {
  '1': 'CreateAgentResponse',
  '2': const [
    const {'1': 'agent', '3': 1, '4': 1, '5': 11, '6': '.lms.Agent', '10': 'agent'},
    const {'1': 'jwt', '3': 2, '4': 1, '5': 9, '10': 'jwt'},
  ],
};

/// Descriptor for `CreateAgentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAgentResponseDescriptor = $convert.base64Decode('ChNDcmVhdGVBZ2VudFJlc3BvbnNlEiAKBWFnZW50GAEgASgLMgoubG1zLkFnZW50UgVhZ2VudBIQCgNqd3QYAiABKAlSA2p3dA==');
@$core.Deprecated('Use updateAgentRequestDescriptor instead')
const UpdateAgentRequest$json = const {
  '1': 'UpdateAgentRequest',
  '2': const [
    const {'1': 'agent', '3': 1, '4': 1, '5': 11, '6': '.lms.Agent', '10': 'agent'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateAgentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAgentRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVBZ2VudFJlcXVlc3QSIAoFYWdlbnQYASABKAsyCi5sbXMuQWdlbnRSBWFnZW50EjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteAgentRequestDescriptor instead')
const DeleteAgentRequest$json = const {
  '1': 'DeleteAgentRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteAgentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAgentRequestDescriptor = $convert.base64Decode('ChJEZWxldGVBZ2VudFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use getAgentFromTokenRequestDescriptor instead')
const GetAgentFromTokenRequest$json = const {
  '1': 'GetAgentFromTokenRequest',
};

/// Descriptor for `GetAgentFromTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentFromTokenRequestDescriptor = $convert.base64Decode('ChhHZXRBZ2VudEZyb21Ub2tlblJlcXVlc3Q=');
@$core.Deprecated('Use getAgentFromTokenResponseDescriptor instead')
const GetAgentFromTokenResponse$json = const {
  '1': 'GetAgentFromTokenResponse',
  '2': const [
    const {'1': 'agent', '3': 1, '4': 1, '5': 11, '6': '.lms.Agent', '10': 'agent'},
  ],
};

/// Descriptor for `GetAgentFromTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentFromTokenResponseDescriptor = $convert.base64Decode('ChlHZXRBZ2VudEZyb21Ub2tlblJlc3BvbnNlEiAKBWFnZW50GAEgASgLMgoubG1zLkFnZW50UgVhZ2VudA==');
