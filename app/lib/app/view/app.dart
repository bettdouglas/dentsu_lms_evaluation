import 'package:build_grpc_channel/build_grpc_channel.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_app/features/active_page/bloc/active_page_bloc.dart';
import 'package:lms_app/features/authentication/auth/auth.dart';
import 'package:lms_app/features/authentication/login/login.dart';
import 'package:lms_app/features/authentication/sign_up/sign_up.dart';
import 'package:lms_app/features/common/grpc-gen/agent_service.pbgrpc.dart';
import 'package:lms_app/features/common/grpc-gen/interceptors.dart';
import 'package:lms_app/features/common/grpc-gen/lead_service.pbgrpc.dart';
import 'package:lms_app/features/common/grpc-gen/quote_benefit_service.pbgrpc.dart';
import 'package:lms_app/features/common/grpc-gen/quote_setup_service.pbgrpc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final channel = buildGrpcChannel(
      host: '0.0.0.0',
      port: 8181,
      secure: false,
    );

    final authProvider = AuthProvider(
      storage: const FlutterSecureStorage(),
      agentServiceClient: AgentServiceClient(channel),
    );

    final authRepository = AuthRepository(authProvider: authProvider);

    final interceptors = [TokenClientInterceptor(authRepository)];

    final clients = [
      AgentServiceClient(channel, interceptors: interceptors),
      LeadServiceClient(channel, interceptors: interceptors),
      QuoteBenefitServiceClient(channel, interceptors: interceptors),
      QuoteSetupServiceClient(channel, interceptors: interceptors),
    ];

    const schemeColor = FlexScheme.bahamaBlue;
    final textStyle = GoogleFonts.dmSans();

    return ScreenUtilInit(
      designSize: const Size(428, 932),
      builder: (context, _) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuthRepository>(
            create: (context) => authRepository,
            lazy: false,
          ),
          ...clients.map((e) => RepositoryProvider(create: (context) => e)),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SignUpBloc(
                authRepository: context.read<AuthRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => LoginBloc(
                authRepository: context.read<AuthRepository>(),
              ),
            ),
            BlocProvider(create: (_) => ActivePageBloc()),
          ],
          child: MaterialApp(
            theme: FlexThemeData.light(
              scheme: schemeColor,
              fontFamily: textStyle.fontFamily,
            ).copyWith(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                fillColor: Colors.white,
                filled: true,
                hintStyle: textStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0XFF3F4347),
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const AuthPage(),
          ),
        ),
      ),
    );
  }
}
