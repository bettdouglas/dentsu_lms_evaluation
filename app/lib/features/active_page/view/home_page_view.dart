import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_app/features/active_page/bloc/active_page_bloc.dart';

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
              return const HomePagePage(title: 'Dashboard', actions: []);
            } else if (pageIndex == 1) {
              return const HomePagePage(title: 'Leads', actions: []);
            } else if (pageIndex == 2) {
              return const HomePagePage(title: 'Quotes', actions: []);
            } else if (pageIndex == 3) {
              return const HomePagePage(title: 'Account', actions: []);
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
  });

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0XFF2D2D2D)),
          ),
          actions: actions,
          backgroundColor: Colors.transparent,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, idx) => ListTile(
              title: Text('Tile $idx'),
            ),
            itemCount: 100,
          ),
        ),
      ],
    );
  }
}
