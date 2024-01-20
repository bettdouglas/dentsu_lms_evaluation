import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_app/features/common/colors.dart';
import 'package:lms_app/features/common/widgets/action_button.dart';
import 'package:lms_app/features/common/widgets/error_message_widget.dart';
import 'package:lms_app/features/lead/lead.dart';
import 'package:lms_app/features/leads/view/community_charts_flutter.dart';
import 'package:lms_app/features/leads/view/leads_pie_chart.dart';

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
            return SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.h),
                    Padding(
                      padding: EdgeInsets.only(left: 25.w),
                      child: Text(
                        'New Leads',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    const Divider(),
                    SizedBox(
                      height: 821.h,
                      child: ListView.builder(
                        itemBuilder: (context, idx) {
                          final lead = leads[idx];
                          return ListTile(
                            title: Text(leads[idx].name),
                            tileColor: idx.isOdd
                                ? const Color(0XFFFAF8F8)
                                : Colors.white,
                            leading: Text((idx + 1).toString().padLeft(2, '0')),
                            onTap: () {
                              context
                                  .read<LeadBloc>()
                                  .add(LeadEvent.loadLead(lead.id));
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LeadPage(leadId: lead.id),
                                ),
                              );
                            },
                          );
                        },
                        itemCount: leads.length,
                      ),
                    ),
                  ],
                ),
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

class TotalLeadsChartWidget extends StatelessWidget {
  const TotalLeadsChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 329.h,
      width: 280.w,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(19.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Total Leads',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  const ActionBarOptions()
                ],
              ),
              SizedBox(height: 28.67.h),
              const ContactedLeadsPieChart(
                contactedLeadsPercentage: 0.56,
              ),
              SizedBox(height: 28.67.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LeadTextStatisticsWidget(
                    color: LmsColors.buttonBackgroundColor,
                    value: '1.7K',
                    title: 'Contacted',
                  ),
                  LeadTextStatisticsWidget(
                    color: LmsColors.buttonBackgroundColor,
                    value: '2.73K',
                    title: 'Total Leads',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeadsLineGraph extends StatelessWidget {
  const LeadsLineGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 329.h,
      width: 280.w,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(19.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Total Leads',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  const ActionBarOptions()
                ],
              ),
              SizedBox(height: 28.67.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LeadTextStatisticsWidget(
                    color: LmsColors.buttonBackgroundColor,
                    value: '',
                    title: 'Accounts',
                  ),
                ],
              ),
              SizedBox(height: 28.67.h),
              SizedBox(
                height: 166.63.h,
                child: DateTimeComboLinePointChart.withSampleData(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeadTextStatisticsWidget extends StatelessWidget {
  const LeadTextStatisticsWidget({
    super.key,
    required this.color,
    required this.value,
    required this.title,
  });

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.49.h,
          height: 10.49.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.49.h),
            color: color,
          ),
        ),
        SizedBox(width: 4.5.w),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 4.5.w),
        Text(
          value,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
