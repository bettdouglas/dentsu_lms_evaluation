import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_app/features/common/widgets/error_message_widget.dart';

import '../quotes.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const QuotesView();
  }
}

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuotesBloc, QuotesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          loaded: (quotes) {
            if (quotes.isEmpty) {
              return const Center(
                child: Text(
                  'You have no quotes. Your quotes will be listed here.',
                ),
              );
            }
            return Card(
              child: ListView.builder(
                itemBuilder: (context, idx) => ListTile(
                  title: Text(quotes[idx].lead.name),
                  tileColor: idx.isOdd ? const Color(0XFFFAF8F8) : Colors.white,
                  leading: Text((idx + 1).toString().padLeft(2, '0')),
                ),
                itemCount: quotes.length,
              ),
            );
          },
          error: (error, _) => ErrorMessageWidgetWithRetry(
            error,
            onRetry: () {
              context.read<QuotesBloc>().add(const QuotesEvent.loadQuotes());
            },
            retryText: 'Try getting quotes again?',
          ),
        );
      },
    );
  }
}
