// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_app/features/common/colors.dart';

class NewActionButton extends StatelessWidget {
  const NewActionButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 153.w,
        height: 42.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.w),
          color: LmsColors.buttonBackgroundColor,
        ),
        child: Row(
          children: [
            SizedBox(width: 12.w),
            Icon(icon, color: Colors.white),
            SizedBox(width: 12.w),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class NextActionButton extends StatelessWidget {
  const NextActionButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 153.w,
        height: 42.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.w),
          color: LmsColors.buttonBackgroundColor,
        ),
        child: Row(
          children: [
            SizedBox(width: 12.w),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Icon(icon, color: Colors.white),
            SizedBox(width: 12.w),
          ],
        ),
      ),
    );
  }
}

class ActionBarOptions extends StatelessWidget {
  const ActionBarOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/svg/options.svg');
  }
}

class BackActionButton extends StatelessWidget {
  const BackActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
