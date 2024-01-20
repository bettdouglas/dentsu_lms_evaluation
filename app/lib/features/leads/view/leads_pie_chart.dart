import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_app/features/common/colors.dart';
import 'package:lms_app/features/lead/lead.dart';
import 'package:vector_math/vector_math.dart' as vmath;

class ContactedLeadsPieChart extends StatelessWidget {
  const ContactedLeadsPieChart({
    super.key,
    required this.contactedLeadsPercentage,
  });

  final double contactedLeadsPercentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166.63.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 73.87.h,
              width: 73.87.h,
              decoration: BoxDecoration(
                color: LmsColors.buttonBackgroundColor,
                borderRadius: BorderRadius.circular(73.87.h),
              ),
              alignment: Alignment.center,
              child: Text(
                '47%',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22.sp,
                  height: 28.64.toFigmaHeight(22.sp),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 20.h,
              child: CustomPaint(
                painter: CustomCircularProgress(
                  value: contactedLeadsPercentage,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCircularProgress extends CustomPainter {
  final double value;

  CustomCircularProgress({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // canvas.drawCircle(
    //   center,
    //   73.87.h / 2,
    //   Paint()
    //     ..style = PaintingStyle.stroke
    //     ..strokeCap = StrokeCap.round
    //     // ..shader = gradient
    //     //     .createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
    //     ..color = LmsColors.buttonBackgroundColor,
    // );

    canvas.drawArc(
      Rect.fromCenter(center: center, width: 166.63.r, height: 166.63.r),
      vmath.radians(0),
      vmath.radians(360),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = const Color(0XFFFFE5D3)
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 20.w,
    );
    canvas.saveLayer(
      Rect.fromCenter(center: center, width: 200, height: 200),
      Paint(),
    );
    canvas.drawArc(
      Rect.fromCenter(center: center, width: 166.63.r, height: 166.63.r),
      vmath.radians(270),
      vmath.radians(360 * value),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        // ..shader = gradient
        //     .createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
        ..color = LmsColors.buttonBackgroundColor
        ..strokeWidth = 20.w,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
