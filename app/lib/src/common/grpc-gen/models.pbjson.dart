///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use agentDescriptor instead')
const Agent$json = const {
  '1': 'Agent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'role', '3': 4, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `Agent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentDescriptor = $convert.base64Decode('CgVBZ2VudBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSEgoEcm9sZRgEIAEoCVIEcm9sZRI5CgpjcmVhdGVkX2F0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjkKCnVwZGF0ZWRfYXQYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use leadDescriptor instead')
const Lead$json = const {
  '1': 'Lead',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'location', '3': 6, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'status', '3': 7, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'phone', '3': 8, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'accountNumber', '3': 9, '4': 1, '5': 9, '10': 'accountNumber'},
    const {'1': 'customerType', '3': 10, '4': 1, '5': 9, '10': 'customerType'},
    const {'1': 'appointment_date', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'appointmentDate'},
  ],
};

/// Descriptor for `Lead`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leadDescriptor = $convert.base64Decode('CgRMZWFkEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBI5CgpjcmVhdGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjkKCnVwZGF0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQSGgoIbG9jYXRpb24YBiABKAlSCGxvY2F0aW9uEhYKBnN0YXR1cxgHIAEoCVIGc3RhdHVzEhQKBXBob25lGAggASgJUgVwaG9uZRIkCg1hY2NvdW50TnVtYmVyGAkgASgJUg1hY2NvdW50TnVtYmVyEiIKDGN1c3RvbWVyVHlwZRgKIAEoCVIMY3VzdG9tZXJUeXBlEkUKEGFwcG9pbnRtZW50X2RhdGUYCyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg9hcHBvaW50bWVudERhdGU=');
@$core.Deprecated('Use quoteSetupDescriptor instead')
const QuoteSetup$json = const {
  '1': 'QuoteSetup',
  '2': const [
    const {'1': 'ageBracket', '3': 1, '4': 1, '5': 9, '10': 'ageBracket'},
    const {'1': 'inPatientCoverLimit', '3': 2, '4': 1, '5': 9, '10': 'inPatientCoverLimit'},
    const {'1': 'spouseCovered', '3': 3, '4': 1, '5': 9, '10': 'spouseCovered'},
    const {'1': 'numberOfChildren', '3': 4, '4': 1, '5': 9, '10': 'numberOfChildren'},
    const {'1': 'coverChildren', '3': 5, '4': 1, '5': 9, '10': 'coverChildren'},
    const {'1': 'spouseAgeBracket', '3': 6, '4': 1, '5': 9, '10': 'spouseAgeBracket'},
  ],
};

/// Descriptor for `QuoteSetup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quoteSetupDescriptor = $convert.base64Decode('CgpRdW90ZVNldHVwEh4KCmFnZUJyYWNrZXQYASABKAlSCmFnZUJyYWNrZXQSMAoTaW5QYXRpZW50Q292ZXJMaW1pdBgCIAEoCVITaW5QYXRpZW50Q292ZXJMaW1pdBIkCg1zcG91c2VDb3ZlcmVkGAMgASgJUg1zcG91c2VDb3ZlcmVkEioKEG51bWJlck9mQ2hpbGRyZW4YBCABKAlSEG51bWJlck9mQ2hpbGRyZW4SJAoNY292ZXJDaGlsZHJlbhgFIAEoCVINY292ZXJDaGlsZHJlbhIqChBzcG91c2VBZ2VCcmFja2V0GAYgASgJUhBzcG91c2VBZ2VCcmFja2V0');
@$core.Deprecated('Use quoteBenefitDescriptor instead')
const QuoteBenefit$json = const {
  '1': 'QuoteBenefit',
  '2': const [
    const {'1': 'inPatient', '3': 1, '4': 1, '5': 8, '10': 'inPatient'},
    const {'1': 'outPatient', '3': 2, '4': 1, '5': 8, '10': 'outPatient'},
    const {'1': 'noCoPayment', '3': 3, '4': 1, '5': 8, '10': 'noCoPayment'},
    const {'1': 'dental', '3': 4, '4': 1, '5': 8, '10': 'dental'},
    const {'1': 'optical', '3': 5, '4': 1, '5': 8, '10': 'optical'},
    const {'1': 'maternity', '3': 6, '4': 1, '5': 8, '10': 'maternity'},
    const {'1': 'lastExpense', '3': 7, '4': 1, '5': 8, '10': 'lastExpense'},
    const {'1': 'personalAccident', '3': 8, '4': 1, '5': 8, '10': 'personalAccident'},
    const {'1': 'covid19Cover', '3': 9, '4': 1, '5': 8, '10': 'covid19Cover'},
  ],
};

/// Descriptor for `QuoteBenefit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quoteBenefitDescriptor = $convert.base64Decode('CgxRdW90ZUJlbmVmaXQSHAoJaW5QYXRpZW50GAEgASgIUglpblBhdGllbnQSHgoKb3V0UGF0aWVudBgCIAEoCFIKb3V0UGF0aWVudBIgCgtub0NvUGF5bWVudBgDIAEoCFILbm9Db1BheW1lbnQSFgoGZGVudGFsGAQgASgIUgZkZW50YWwSGAoHb3B0aWNhbBgFIAEoCFIHb3B0aWNhbBIcCgltYXRlcm5pdHkYBiABKAhSCW1hdGVybml0eRIgCgtsYXN0RXhwZW5zZRgHIAEoCFILbGFzdEV4cGVuc2USKgoQcGVyc29uYWxBY2NpZGVudBgIIAEoCFIQcGVyc29uYWxBY2NpZGVudBIiCgxjb3ZpZDE5Q292ZXIYCSABKAhSDGNvdmlkMTlDb3Zlcg==');
@$core.Deprecated('Use quoteDescriptor instead')
const Quote$json = const {
  '1': 'Quote',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'quote_id', '3': 2, '4': 1, '5': 9, '10': 'quoteId'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'source_agent', '3': 5, '4': 1, '5': 11, '6': '.lms.Agent', '10': 'sourceAgent'},
    const {'1': 'lead', '3': 6, '4': 1, '5': 11, '6': '.lms.Lead', '10': 'lead'},
    const {'1': 'businessUnit', '3': 7, '4': 1, '5': 9, '10': 'businessUnit'},
    const {'1': 'setup', '3': 8, '4': 1, '5': 11, '6': '.lms.QuoteSetup', '10': 'setup'},
    const {'1': 'benefits', '3': 9, '4': 1, '5': 11, '6': '.lms.QuoteBenefit', '10': 'benefits'},
  ],
};

/// Descriptor for `Quote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quoteDescriptor = $convert.base64Decode('CgVRdW90ZRIOCgJpZBgBIAEoBVICaWQSGQoIcXVvdGVfaWQYAiABKAlSB3F1b3RlSWQSOQoKY3JlYXRlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0Ei0KDHNvdXJjZV9hZ2VudBgFIAEoCzIKLmxtcy5BZ2VudFILc291cmNlQWdlbnQSHQoEbGVhZBgGIAEoCzIJLmxtcy5MZWFkUgRsZWFkEiIKDGJ1c2luZXNzVW5pdBgHIAEoCVIMYnVzaW5lc3NVbml0EiUKBXNldHVwGAggASgLMg8ubG1zLlF1b3RlU2V0dXBSBXNldHVwEi0KCGJlbmVmaXRzGAkgASgLMhEubG1zLlF1b3RlQmVuZWZpdFIIYmVuZWZpdHM=');
