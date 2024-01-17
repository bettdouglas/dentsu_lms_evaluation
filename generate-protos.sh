#! /bin/bash
set -euo pipefail

mkdir -p server/lib/grpc-gen/

# Generate models only
protoc -I protos/ --dart_out=server/lib/grpc-gen/ protos/models.proto 

# Generate Well-Known Types
protoc -I protos/ --dart_out=server/lib/grpc-gen/ google/protobuf/timestamp.proto google/protobuf/field_mask.proto google/protobuf/empty.proto

# Generate models + grpc stubs
protoc -I protos/ --dart_out=grpc:server/lib/grpc-gen/ protos/agent_service.proto protos/lead_service.proto protos/quote_benefit_service.proto protos/quote_service.proto protos/quote_setup_service.proto


mkdir -p app/lib/features/common/grpc-gen/

# Generate models only
protoc -I protos/ --dart_out=app/lib/features/common/grpc-gen/ protos/models.proto 

# Generate Well-Known Types
protoc -I protos/ --dart_out=app/lib/features/common/grpc-gen/ google/protobuf/timestamp.proto google/protobuf/field_mask.proto google/protobuf/empty.proto

# Generate models + grpc stubs
protoc -I protos/ --dart_out=grpc:app/lib/features/common/grpc-gen/ protos/agent_service.proto protos/lead_service.proto protos/quote_benefit_service.proto protos/quote_service.proto protos/quote_setup_service.proto
