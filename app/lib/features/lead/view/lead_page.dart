import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_app/features/common/colors.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/widgets/action_button.dart';
import 'package:lms_app/features/common/widgets/app_bar.dart';

import '../lead.dart';

class LeadPage extends StatelessWidget {
  const LeadPage({
    super.key,
    required this.lead,
  });

  final Lead lead;
  @override
  Widget build(BuildContext context) {
    return LeadView(lead: lead);
  }
}

class LeadView extends StatelessWidget {
  const LeadView({
    super.key,
    required this.lead,
  });

  final Lead lead;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeadBloc, LeadState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0XFFF2F2F2),
          appBar: const LMSAppBar(
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: EdgeInsets.all(4.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  LeadPageNavigator(
                    leadId: lead.id.toString(),
                  ),
                  SizedBox(height: 16.h),
                  LeadStatusCard(status: lead.status),
                  SizedBox(height: 36.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackActionButton(
                        icon: Icons.close,
                        title: 'Cancel lead',
                        onTap: () {},
                      ),
                      NextActionButton(
                        icon: Icons.arrow_forward_ios,
                        title: 'Next',
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(36.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LeadProfileTile(lead: lead),
                          SizedBox(height: 30.h),
                          const LeadDateDetailsWidget(
                            title: 'Lead Created',
                            date: '10 August 2022',
                          ),
                          SizedBox(height: 17.h),
                          const LeadDateDetailsWidget(
                            title: 'Last Contacted',
                            date: '16 August 2022',
                          ),
                          SizedBox(height: 17.h),
                          const LeadDateDetailsWidget(
                            title: 'Next Appointment',
                            date: '29 August 2022',
                          ),
                          SizedBox(height: 17.h),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(36.r),
                      child: DefaultTabController(
                        length: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TabBar(
                              indicatorColor: LmsColors.buttonBackgroundColor,
                              labelColor: LmsColors.pink,
                              unselectedLabelColor: Color(0XFF666666),
                              tabs: [
                                Tab(text: 'Lead Details'),
                                Tab(
                                  text: 'Assigned Lead',
                                ),
                              ],
                            ),
                            const LeadProductDetailsWidget(
                              title: 'Lead Source',
                              detail: 'App',
                            ),
                            SizedBox(height: 23.h),
                            LeadProductDetailsWidget(
                              title: 'Product Requested',
                              detail: lead.productRequested,
                            ),
                            SizedBox(height: 23.h),
                            const LeadProductDetailsWidget(
                              title: 'Product Sold',
                              detail: 'Mortgage Account',
                            ),
                            SizedBox(height: 23.h),
                            const LeadProductDetailsWidget(
                              title: 'Lead Close Reason',
                              detail: 'Lost to competition',
                            ),
                            SizedBox(height: 23.h),
                            const LeadProductDetailsWidget(
                              title: 'Recording Agent',
                              detail: 'Khary Fagbure',
                            ),
                            SizedBox(height: 23.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class LeadPageNavigator extends StatelessWidget implements PreferredSizeWidget {
  const LeadPageNavigator({
    super.key,
    required this.leadId,
  });

  final String leadId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: LmsColors.pink,
          ),
        ),
        SizedBox(width: 16.w),
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Back to all leads',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: LmsColors.pink,
            ),
          ),
        ),
        SizedBox(width: 18.w),
        SvgPicture.asset('assets/svg/slash_arrow.svg'),
        SizedBox(width: 18.w),
        Text(
          'LD-$leadId',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}

class LeadStatusCard extends StatelessWidget {
  const LeadStatusCard({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(28.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Lead Status',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18.sp,
                height: 30.sp.toFigmaHeight(18.sp),
              ),
            ),
            // Chip(
            //   label: Text(status),
            //   avatar: const CircleAvatar(
            //     child: Icon(Icons.check),
            //   ),
            // ),
            Container(
              width: 158.w,
              height: 35.h,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0XFF5ABEA6), Color(0XFF863AAc)],
                ),
                borderRadius: BorderRadius.circular(17.5.r),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20.76.r,
                      backgroundColor: LmsColors.buttonBackgroundColor,
                      child: Icon(
                        Icons.check,
                        size: 9.r,
                        color: status == 'Contacted'
                            ? LmsColors.pink
                            : Colors.white,
                      ),
                    ),
                    Text(
                      status,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeadProfileTile extends StatelessWidget {
  const LeadProfileTile({
    super.key,
    required this.lead,
  });

  final Lead lead;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        width: 59.w,
        height: 59.w,
        child: Image.asset('assets/png/profile.png'),
      ),
      title: Text(
        lead.name,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
          height: 23.44.toFigmaHeight(18.sp),
        ),
      ),
      subtitle: Text(lead.location.capitalize),
    );
  }
}

class LeadDateDetailsWidget extends StatelessWidget {
  const LeadDateDetailsWidget({
    super.key,
    required this.title,
    required this.date,
  });

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFFD0CDCE),
          width: 1.sp,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.all(8.w),
      width: 319.w,
      height: 73.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 20.0.toFigmaHeight(14.sp),
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              height: 20.0.toFigmaHeight(16.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class LeadProductDetailsWidget extends StatelessWidget {
  const LeadProductDetailsWidget({
    super.key,
    required this.title,
    required this.detail,
  });

  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 20.0.toFigmaHeight(14.sp),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            detail,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              height: 20.0.toFigmaHeight(16.sp),
            ),
          ),
        ],
      ),
    );
  }
}

extension FigmaDimention on num {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}
