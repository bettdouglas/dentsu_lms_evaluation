import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/database/utils.dart';
import 'package:server/grpc-gen/agent_service.pbgrpc.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/interceptors/auth_interceptor.dart';
import 'package:server/services/agent_service.dart';
import 'package:server/services/lead_service.dart';
import 'package:server/services/quote_benefit_service.dart';
import 'package:server/services/quote_service.dart';
import 'package:server/services/quote_setup_service.dart';
import 'package:server/utils/dotenv.dart';

void main(List<String> arguments) async {
  final lmsDb = db.LmsDb(openNativeDatabase('lms_db.sqlite'));

  final interceptors = <Interceptor>[
    authInterceptor,
  ];
  final server = Server.create(
    services: [
      AgentService(lmsDb),
      LeadService(lmsDb),
      QuoteService(lmsDb),
      QuoteBenefitService(lmsDb),
      QuoteSetupService(lmsDb),
    ],
    interceptors: interceptors,
    errorHandler: (e, st) {
      print('ERROR');
      print(List.generate(100, (index) => '-').join());
      print(e);
      print(List.generate(100, (index) => '-').join());
    },
  );

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(dotEnv.getOrElse('PORT', () => '8181'));

  /// create default admin user
  await server.serve(address: ip, port: port);

  print('Server running at $ip on $port');
  final channel = ClientChannel(
    ip,
    port: port,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final agentPasswordDict = {
    'Dentsu1234': Agent(
      name: 'dentsu-admin',
      email: 'admin@dentsu.com',
      role: 'Admin',
    ),
    'AustineM': Agent(
      name: 'austine',
      email: 'austine.maina@dentsu.com',
      role: 'Designer',
    ),
    'JeffreyQ': Agent(
      name: 'jeffrey',
      email: 'Jeffrey.Quntai@dentsu.com',
      role: 'Product Lead',
    ),
    'CharlesK': Agent(
      name: 'charles',
      email: 'charles.karuri@dentsu.com',
      role: 'Product Lead',
    ),
    'MosesM': Agent(
      name: 'moses',
      email: 'moses.mativo@dentsu.com',
      role: 'Devops',
    ),
    'DavidO': Agent(
      name: 'david',
      email: 'david.odhiambo@dentsu.com',
      role: 'Devops',
    ),
  };
  final agentServiceClient = AgentServiceClient(channel);
  for (var entry in agentPasswordDict.entries) {
    try {
      await agentServiceClient.createAgent(
        CreateAgentRequest(
          agent: entry.value,
          password: entry.key,
        ),
      );
    } on GrpcError catch (_) {}
  }
}
