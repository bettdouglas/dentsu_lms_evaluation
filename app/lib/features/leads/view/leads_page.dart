import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_app/features/common/grpc-gen/lead_service.pbgrpc.dart';

import '../leads.dart';

class LeadsPage extends StatelessWidget {
  const LeadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LeadsBloc(
        leadServiceClient: context.read<LeadServiceClient>(),
      ),
      child: const LeadsView(),
    );
  }
}

class LeadsView extends StatelessWidget {
  const LeadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeadsBloc, LeadsState>(
      builder: (context, state) {
        // TODO: return correct widget based on the state.
        return ListView(
          children: [
            Text(
              'Dashboard',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        );
      },
    );
  }
}
