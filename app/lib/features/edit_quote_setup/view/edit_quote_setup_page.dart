import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../edit_quote_setup.dart';

class EditQuoteSetupPage extends StatelessWidget {
  const EditQuoteSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EditQuoteSetupView();
  }
}

class EditQuoteSetupView extends StatelessWidget {
  const EditQuoteSetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditQuoteSetupBloc, EditQuoteSetupState>(
      builder: (context, state) {
        // TODO: return correct widget based on the state.
        return const SizedBox();
      },
    );
  }
}
