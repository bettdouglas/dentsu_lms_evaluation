import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../edit_quote.dart';

class EditQuotePage extends StatelessWidget {
  const EditQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EditQuoteBloc(),
      child: const EditQuoteView(),
    );
  }
}

class EditQuoteView extends StatelessWidget {
  const EditQuoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditQuoteBloc, EditQuoteState>(
      builder: (context, state) {
        // TODO: return correct widget based on the state.
        return const SizedBox();
      },
    );
  }
}
