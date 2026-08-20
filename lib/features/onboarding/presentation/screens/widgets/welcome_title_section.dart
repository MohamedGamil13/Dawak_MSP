import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class WelcomeTitleSection extends StatelessWidget {
  const WelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Dawak',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32.sp,
            height: 1.25,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.64.sp,
            color: AppColors.onSurface,
          ),
        ),
        Gap(16.h),
        Text(
          'Your health, on schedule.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.sp,
            height: 1.55,
            fontWeight: FontWeight.w400,
            color: AppColors.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
