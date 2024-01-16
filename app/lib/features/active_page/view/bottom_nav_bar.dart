import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_app/features/active_page/bloc/active_page_bloc.dart';
import 'package:lms_app/features/common/colors.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivePageBloc, ActivePageState>(
      builder: (context, state) {
        final currentIndex = state.maybeWhen(
          orElse: () => 0,
          pageLoaded: (page) => page,
        );
        return BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: Colors.deepPurple),
          currentIndex: currentIndex,
          selectedItemColor: LmsColors.pink,
          onTap: (index) {
            context
                .read<ActivePageBloc>()
                .add(ActivePageEvent.changePage(index));
          },
          items: [
            'home_nav_logo.svg',
            'leads_nav_logo.svg',
            'orders_nav_logo.svg',
            'profile_nav_logo.svg',
          ]
              .asMap()
              .entries
              .map(
                (e) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/${e.value}',
                    width: 26.w,
                    height: 26.h,
                    color: currentIndex == e.key ? LmsColors.pink : Colors.grey,
                  ),
                  label: '',
                ),
              )
              .toList(),
        );
      },
    );
  }
}
