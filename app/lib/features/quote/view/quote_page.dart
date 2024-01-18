import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lms_app/features/common/colors.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/widgets/app_bar.dart';
import 'package:lms_app/features/common/widgets/error_message_widget.dart';
import 'package:lms_app/features/lead/lead.dart';

import '../quote.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({
    super.key,
    required this.quoteId,
  });

  final int quoteId;
  @override
  Widget build(BuildContext context) {
    return QuoteView(quoteId: quoteId);
  }
}

class QuoteView extends StatelessWidget {
  const QuoteView({
    super.key,
    required this.quoteId,
  });

  final int quoteId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteBloc, QuoteState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0XFFF2F2F2),
          appBar: const LMSAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              error: (error, _) => ErrorMessageWidgetWithRetry(
                error,
                onRetry: () {
                  context.read<QuoteBloc>().add(QuoteEvent.loadQuote(quoteId));
                },
              ),
              loaded: (quote) => DefaultTabController(
                length: 3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'View Quote',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0XFF2D2D2D)),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      TabBar(
                        indicatorColor: LmsColors.buttonBackgroundColor,
                        labelColor: LmsColors.pink,
                        unselectedLabelColor: const Color(0XFF666666),
                        labelStyle: TextStyle(
                          fontSize: 14.sp,
                          height: 18.23.toFigmaHeight(14.sp),
                          fontWeight: FontWeight.w500,
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.sp,
                          height: 18.23.toFigmaHeight(14.sp),
                          fontWeight: FontWeight.w500,
                        ),
                        labelPadding: EdgeInsets.zero,
                        tabs: const [
                          Tab(text: 'Quote Information'),
                          Tab(text: 'Setup'),
                          Tab(text: 'Benefits'),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      AutoScaleTabBarView(
                        children: [
                          QuoteInformationTabBarView(quote: quote),
                          QuoteSetupTabBarView(quote: quote),
                          QuoteBenefitsTabBarView(quote: quote),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class QuoteInformationTabBarView extends StatelessWidget {
  const QuoteInformationTabBarView({
    super.key,
    required this.quote,
  });

  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'First Name',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'first_name',
          initialValue: quote.lead.firstName,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(
            hintText: 'First Name',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.minWordsCount(
              3,
              errorText: 'First name is required',
            ),
          ]),
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Middle Name',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'middle_name',
          initialValue: quote.lead.middleName,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(
            hintText: 'Middle Name',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.minWordsCount(
              3,
              errorText: 'Middle name is required',
            ),
          ]),
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Last Name',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'last_name',
          initialValue: quote.lead.lastName,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(
            hintText: 'Last Name',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.minWordsCount(
              3,
              errorText: 'Last name is required',
            ),
          ]),
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Originating Lead Source',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'lead_source',
          initialValue: quote.sourceAgent.role,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(),
          enabled: false,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Quote ID',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'quote_id',
          initialValue: quote.quoteId,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(),
          enabled: false,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Lead ID',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'lead_id',
          initialValue: quote.lead.id.toString(),
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(),
          enabled: false,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Source',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'lead_source',
          initialValue: 'Agent Portal',
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(),
          enabled: false,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
        Text(
          'Capturing User',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderTextField(
          name: 'lead_source',
          initialValue: 'Jeremy Kibor',
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black.withOpacity(0.6),
          ),
          decoration: const InputDecoration(),
          enabled: false,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 26.h),
      ],
    );
  }
}

class QuoteSetupTabBarView extends StatelessWidget {
  const QuoteSetupTabBarView({
    super.key,
    required this.quote,
  });

  final Quote quote;

  @override
  Widget build(BuildContext context) {
    final setup = quote.setup;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Age Bracket',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'age_bracket',
          initialValue: setup.ageBracket.isEmpty ? null : setup.ageBracket,
          items: knownAgeBrackets
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
            hintText: 'Age Bracket',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Age Bracket is required',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
        Text(
          'Inpatient Cover Limit',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'inpatient_cover_limit',
          initialValue: setup.inPatientCoverLimit.isEmpty
              ? null
              : setup.inPatientCoverLimit,
          items: knownCoverLimits
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
            hintText: 'Inpatient Cover Limit',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Inpatient Cover Limit is required',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
        Text(
          'Spouse Covered',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'spouse_covered',
          initialValue:
              setup.spouseCovered.isEmpty ? null : setup.spouseCovered,
          items: knownAgeBrackets
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
            hintText: 'Spouse Covered',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Spouse Covered Option is required',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
        Text(
          'How Many Children',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'number_of_children_covered',
          initialValue: setup.numberOfChildrenCovered.isEmpty
              ? null
              : setup.numberOfChildrenCovered,
          items: numberOfChildrenOptions
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
            hintText: 'How Many Children',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Number of children covered by scheme is required',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
        Text(
          'Cover Children',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'cover_children',
          initialValue:
              setup.coverChildren.isEmpty ? null : setup.coverChildren,
          items: knownYesNoOptions
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
            hintText: 'Cover Children',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Should we cover the children',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
        Text(
          'Spouse Age Bracket',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'spouse_age_bracket',
          initialValue:
              setup.spouseAgeBracket.isEmpty ? null : setup.spouseAgeBracket,
          items: knownAgeBrackets
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
            hintText: 'Spouse Age Bracket',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Spouse Age Bracket is required',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
      ],
    );
  }
}

class QuoteBenefitsTabBarView extends StatelessWidget {
  const QuoteBenefitsTabBarView({
    super.key,
    required this.quote,
  });

  final Quote quote;

  @override
  Widget build(BuildContext context) {
    final setup = quote.setup;
    final benefits = quote.benefits;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Inpatient Cover Limit',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 10.h),
        FormBuilderDropdown<String>(
          name: 'inpatient_cover_limit',
          initialValue: setup.inPatientCoverLimit.isEmpty
              ? null
              : setup.inPatientCoverLimit,
          items: knownCoverLimits
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
            hintText: 'Inpatient Cover Limit',
          ),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
              errorText: 'Inpatient Cover Limit is required',
            ),
          ]),
        ),
        SizedBox(height: 26.h),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.all(20.h),
            height: 480.h,
            child: ListView(
              children: [
                Text(
                  'Benefits',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    height: 20.83.toFigmaHeight(16.sp),
                  ),
                ),
                SizedBox(height: 13.h),
                BenefitSwitch(
                  benefit: ('Inpatient', 'inpatient'),
                  value: benefits.inPatient,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('No Co-payment', 'no_co_payment'),
                  value: benefits.noCoPayment,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Dental', 'dental'),
                  value: benefits.dental,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Optical', 'optical'),
                  value: benefits.optical,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Maternity', 'maternity'),
                  value: benefits.maternity,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Last Expense', 'last_expense'),
                  value: benefits.lastExpense,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Personal Accident', 'personal_accident'),
                  value: benefits.personalAccident,
                  showDivider: true,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Enhanced Covid 19 Cover', 'covid_19_cover'),
                  value: benefits.dental,
                  showDivider: false,
                  onChanged: (value) {},
                ),
                BenefitSwitch(
                  benefit: ('Amref Evacuation', 'amref_evacuation'),
                  value: benefits.amrefEvacuation,
                  showDivider: false,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BenefitSwitch extends StatelessWidget {
  const BenefitSwitch({
    super.key,
    required this.benefit,
    required this.value,
    required this.showDivider,
    required this.onChanged,
  });

  final (String, String) benefit;
  final bool value;
  final bool showDivider;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.h,
      decoration: BoxDecoration(
        border: showDivider
            ? const Border(bottom: BorderSide(color: Color(0XFFDFDEDE)))
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            benefit.$1,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
              height: 16.93.toFigmaHeight(13.sp),
              decorationThickness: 0.5,
            ),
          ),
          const Spacer(),
          CustomCheckbox(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 100);
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: AnimatedContainer(
        duration: duration,
        decoration: BoxDecoration(
          color: value
              ? const Color(0XFF863AAC)
              : const Color(0XFF444444).withOpacity(0.6),
          borderRadius: BorderRadius.circular(15.h),
        ),
        width: 33.w,
        height: 19.h,
        alignment: value ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          width: 12.h,
          height: 12.h,
          margin: EdgeInsets.all(4.h),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

final knownAgeBrackets = [
  "0 to 9 years",
  "10 to 17 years",
  "18 to 29 years",
  "30 to 44 years",
  "45 to 60 years",
  "60+ years",
];

final knownCoverLimits = [
  'KES 100,000',
  'KES 250,000',
  'KES 1,000,000',
  'KES 3,000,000',
  'KES 15,000,000',
];

final knownYesNoOptions = ['Yes', 'No'];

final numberOfChildrenOptions = [
  ...List.generate(10, (index) => '$index children'),
  'Over 10 children',
];

extension on Lead {
  String get firstName {
    return name.split(' ')[0];
  }

  String get middleName {
    return name.split(' ')[1];
  }

  String get lastName {
    return name.split(' ')[2];
  }
}
