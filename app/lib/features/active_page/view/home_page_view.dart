import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_app/features/active_page/bloc/active_page_bloc.dart';
import 'package:lms_app/features/authentication/auth/auth.dart';
import 'package:lms_app/features/common/widgets/action_button.dart';
import 'package:lms_app/features/create_lead/create_lead.dart';
import 'package:lms_app/features/create_quote/view/create_quote_page.dart';
import 'package:lms_app/features/leads/view/leads_page.dart';
import 'package:lms_app/features/quotes/quotes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActivePageBloc, ActivePageState>(
      listener: (_, next) {
        next.when(
          initial: () {},
          pageLoaded: (page) {
            pageController.jumpToPage(page);
          },
        );
      },
      builder: (context, state) {
        return PageView.builder(
          itemBuilder: (context, pageIndex) {
            if (pageIndex == 0) {
              return HomePagePage(
                title: 'Dashboard',
                actions: const [],
                body: ListView(children: [
                  SizedBox(
                    height: 320.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        TotalLeadsChartWidget(),
                        LeadsLineGraph(),
                      ],
                    ),
                  ),
                  const LeadsPage(),
                ]),
              );
            } else if (pageIndex == 1) {
              return HomePagePage(
                title: 'Leads',
                actions: [
                  NewActionButton(
                    icon: Icons.add,
                    title: 'New Lead',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const CreateLeadPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 28.w),
                  const ActionBarOptions(),
                ],
                body: const LeadsPage(),
              );
            } else if (pageIndex == 2) {
              return HomePagePage(
                title: 'Quotes',
                actions: [
                  NewActionButton(
                    icon: Icons.add,
                    title: 'New Quote',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const CreateQuotePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 28.w),
                  const ActionBarOptions(),
                ],
                body: const QuotesPage(),
              );
            } else if (pageIndex == 3) {
              return HomePagePage(
                title: 'Account',
                actions: const [],
                body: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.logout());
                    },
                    icon: const Icon(Icons.exit_to_app),
                    label: const Text('Log out'),
                  ),
                ),
              );
            }
            return null;
          },
          itemCount: 4,
          controller: pageController,
        );
      },
    );
  }
}

class HomePagePage extends StatelessWidget {
  const HomePagePage({
    super.key,
    required this.title,
    required this.actions,
    required this.body,
  });

  final String title;
  final List<Widget> actions;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFF2D2D2D)),
              ),
              const Spacer(),
              ...actions,
            ],
          ),
          SizedBox(height: 40.h),
          Expanded(child: body),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }
}
