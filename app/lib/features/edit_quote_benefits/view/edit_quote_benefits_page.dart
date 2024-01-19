import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../edit_quote_benefits.dart';

class EditQuoteBenefitsPage extends StatelessWidget {
  const EditQuoteBenefitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EditQuoteBenefitsView();
  }
}

class EditQuoteBenefitsView extends StatelessWidget {
  const EditQuoteBenefitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditQuoteBenefitsBloc, EditQuoteBenefitsState>(
      builder: (context, state) {
        // TODO: return correct widget based on the state.
        return const SizedBox();
      },
    );
  }
}
