import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64.r,
          height: 64.r,
          decoration: const BoxDecoration(
            color: AppColors.primaryContainer,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.medical_services,
            size: 36.r,
            color: AppColors.primary,
          ),
        ),
        Gap(12.h),
        Text(
          'MedTrack',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.64.sp,
            color: AppColors.primary,
          ),
        ),
        Gap(8.h),
        Text(
          'Manage your health with precision.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp, color: AppColors.onSurfaceVariant),
        ),
      ],
    );
  }
}
