import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_app/features/common/colors.dart';

class LMSAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LMSAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      automaticallyImplyLeading: true,
      title: SvgPicture.asset(
        'assets/svg/dc_logo.svg',
        height: 25.h,
        width: 57.95.w,
      ),
      centerTitle: false,
      backgroundColor: LmsColors.pink,
      actions: [
        Image.asset(
          'assets/png/user_icon.png',
          height: 25.h,
          width: 57.95.w,
        ),
        SvgPicture.asset(
          'assets/svg/search_icon.svg',
          height: 25.h,
          width: 57.95.w,
        ),
        SizedBox(width: 13.w),
        SvgPicture.asset(
          'assets/svg/menu.svg',
          height: 25.h,
          width: 57.95.w,
        ),
        SizedBox(width: 19.w),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}