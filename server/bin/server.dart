import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/database/utils.dart';
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
  );

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(dotEnv.getOrElse('PORT', () => '8181'));

  await server.serve(address: ip, port: port);

  print('Server running at $ip on $port');
}
