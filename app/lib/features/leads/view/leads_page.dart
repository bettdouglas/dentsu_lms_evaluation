import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_app/features/common/widgets/error_message_widget.dart';

import '../leads.dart';

class LeadsPage extends StatelessWidget {
  const LeadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LeadsView();
  }
}

class LeadsView extends StatelessWidget {
  const LeadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeadsBloc, LeadsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          loaded: (leads) {
            if (leads.isEmpty) {
              return const Center(
                child: Text(
                  'You have no leads. Your leads will be listed here.',
                ),
              );
            }
            return Card(
              child: ListView.builder(
                itemBuilder: (context, idx) => ListTile(
                  title: Text(leads[idx].name),
                  tileColor: idx.isOdd ? const Color(0XFFFAF8F8) : Colors.white,
                  leading: Text((idx + 1).toString().padLeft(2, '0')),
                ),
                itemCount: leads.length,
              ),
            );
          },
          error: (error, _) => ErrorMessageWidgetWithRetry(
            error,
            onRetry: () {
              context.read<LeadsBloc>().add(const LeadsEvent.getLeads());
            },
          ),
        );
      },
    );
  }
}