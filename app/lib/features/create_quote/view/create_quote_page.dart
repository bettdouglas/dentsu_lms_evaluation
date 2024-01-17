import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../create_quote.dart';

class CreateQuotePage extends StatelessWidget {
  const CreateQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateQuoteBloc(),
      child: const CreateQuoteView(),
    );
  }
}

class CreateQuoteView extends StatelessWidget {
  const CreateQuoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuoteBloc, CreateQuoteState>(
      builder: (context, state) {
        // TODO: return correct widget based on the state.
        return const SizedBox();
      },
    );
  }
}
