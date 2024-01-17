import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lms_app/features/common/widgets/action_button.dart';
import 'package:lms_app/features/common/widgets/app_bar.dart';
import 'package:lms_app/features/leads/bloc/leads_bloc.dart';

import '../create_lead.dart';

class CreateLeadPage extends StatelessWidget {
  const CreateLeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateLeadView();
  }
}

class CreateLeadView extends StatefulWidget {
  const CreateLeadView({super.key});

  @override
  State<CreateLeadView> createState() => _CreateLeadViewState();
}

class _CreateLeadViewState extends State<CreateLeadView> {
  @override
  void initState() {
    context.read<CreateLeadBloc>().add(const CreateLeadEvent.started());
    super.initState();
  }

  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateLeadBloc, CreateLeadState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          leadSaved: (lead) {
            context.read<LeadsBloc>().add(const LeadsEvent.getLeads());
            ScaffoldMessenger.of(context)
                .showSnackBar(
                  const SnackBar(content: Text('Lead saved successfully!')),
                )
                .closed
                .then((value) => Navigator.of(context).pop());
          },
        );
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
                      'Lead Name',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderTextField(
                      name: 'names',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'First, Middle & Last Name',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minWordsCount(
                          3,
                          errorText: 'Enter the first, middle and last names',
                        ),
                      ]),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderTextField(
                      name: 'email',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(
                          errorText: 'Email of the leed is required',
                        ),
                      ]),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      'Location',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderTextField(
                      name: 'location',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'e.g Nairobi, Kahawa, Westlands',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: 'Location of the leed is required',
                        ),
                      ]),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderTextField(
                      name: 'phone',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'e.g 071410xxxx',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: 'Phone Number of the leed is required',
                        ),
                      ]),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      'Customer Type',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderDropdown<String>(
                      name: 'customer_type',
                      items: knownCustomerTypes
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Type of Customer',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: 'Customer Type of the leed is required',
                        ),
                      ]),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      'Product',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    FormBuilderDropdown<String>(
                      name: 'product',
                      items: knownProducts
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Type of Product',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: 'Product being sold is required',
                        ),
                      ]),
                    ),
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
                            final names = fields['names']!.value as String;
                            final email = fields['email']!.value as String;
                            final location =
                                fields['location']!.value as String;
                            final phone = fields['phone']!.value as String;
                            final customerType =
                                fields['customer_type']!.value as String;
                            final product = fields['product']!.value as String;
                            context
                                .read<CreateLeadBloc>()
                                .add(CreateLeadEvent.saveNewLead(
                                  name: names,
                                  email: email,
                                  location: location,
                                  phone: phone,
                                  customerType: customerType,
                                  product: product,
                                ));
                          }
                        },
                      ),
                    )
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

final knownCustomerTypes = [
  'Individual Customer',
  'Company',
  'Small Business',
  'Family',
];

final knownProducts = [
  'Critical Illness Cover',
  'Balanced Fund',
  'Imarika Investment',
  'Pension Annuity',
  'Hospicash',
  'Tegemeo Term',
  'Akiba',
  'Golf Insurance',
  'Income Drawdown',
];
