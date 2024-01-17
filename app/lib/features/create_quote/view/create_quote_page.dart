import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/widgets/action_button.dart';
import 'package:lms_app/features/common/widgets/app_bar.dart';
import 'package:lms_app/features/common/widgets/error_message_widget.dart';
import 'package:lms_app/features/create_lead/view/create_lead_page.dart';
import 'package:lms_app/features/leads/bloc/leads_bloc.dart';
import 'package:lms_app/features/quotes/quotes.dart';

import '../create_quote.dart';

class CreateQuotePage extends StatelessWidget {
  const CreateQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateQuoteView();
  }
}

class CreateQuoteView extends StatefulWidget {
  const CreateQuoteView({super.key});

  @override
  State<CreateQuoteView> createState() => _CreateQuoteViewState();
}

class _CreateQuoteViewState extends State<CreateQuoteView> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateQuoteBloc, CreateQuoteState>(
      listener: (context, state) {
        context.read<QuotesBloc>().add(const QuotesEvent.loadQuotes());
        ScaffoldMessenger.of(context)
            .showSnackBar(
              const SnackBar(content: Text('Quote created successfully!')),
            )
            .closed
            .then((value) => Navigator.of(context).pop());
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const LMSAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FormBuilder(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lead',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    BlocBuilder<LeadsBloc, LeadsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => ErrorMessageWidgetWithRetry(
                            'Failed to get leads',
                            onRetry: () {
                              context
                                  .read<LeadsBloc>()
                                  .add(const LeadsEvent.getLeads());
                            },
                          ),
                          loading: () => const LinearProgressIndicator(),
                          loaded: (leads) {
                            if (leads.isEmpty) {
                              return ErrorMessageWidgetWithRetry(
                                'You have no leads. Please register one on the Leads page',
                                onRetry: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateLeadPage(),
                                    ),
                                  );
                                },
                                retryText: 'Create a new lead',
                              );
                            }
                            return FormBuilderDropdown<Lead>(
                              name: 'lead',
                              items: leads
                                  .map(
                                    (e) => DropdownMenuItem<Lead>(
                                      value: e,
                                      child: Text(e.name),
                                    ),
                                  )
                                  .toList(),
                              decoration: const InputDecoration(
                                hintText: 'Name of the lead?',
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                  errorText: 'Choose the lead',
                                ),
                              ]),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      'Business Unit',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderTextField(
                      name: 'business_unit',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Owning business unit',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: 'Enter the business unit under this lead',
                        ),
                      ]),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    // Text(
                    //   'Product',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 14.sp,
                    //   ),
                    // ),
                    // SizedBox(height: 10.h),
                    // FormBuilderDropdown<String>(
                    //   name: 'product',
                    //   items: knownProducts
                    //       .map(
                    //         (e) => DropdownMenuItem<String>(
                    //           value: e,
                    //           child: Text(e),
                    //         ),
                    //       )
                    //       .toList(),
                    //   style: TextStyle(
                    //     fontSize: 13.sp,
                    //     color: Colors.black.withOpacity(0.6),
                    //   ),
                    //   decoration: const InputDecoration(
                    //     hintText: 'Type of Product',
                    //   ),
                    //   validator: FormBuilderValidators.compose([
                    //     FormBuilderValidators.required(
                    //       errorText: 'Product being sold is required',
                    //     ),
                    //   ]),
                    // ),
                    SizedBox(height: 52.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: NextActionButton(
                        icon: Icons.keyboard_arrow_right,
                        title: 'Next',
                        onTap: () {
                          formKey.currentState?.save();
                          final state =
                              formKey.currentState?.validate() ?? false;
                          if (state) {
                            final fields = formKey.currentState!.fields;
                            final lead = fields['lead']!.value as Lead;
                            final businessUnit =
                                fields['business_unit']!.value as String;
                            context
                                .read<CreateQuoteBloc>()
                                .add(CreateQuoteEvent.createQuote(
                                  lead: lead,
                                  businessUnit: businessUnit,
                                ));
                          } else {
                            print('Invalid form');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
