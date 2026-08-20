import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48.r,
          height: 48.r,
          decoration: BoxDecoration(
            color: AppColors.primaryContainer,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 8.r,
                offset: Offset(0, 2.r),
              ),
            ],
          ),
          child: Icon(Icons.medical_services, size: 28.r, color: Colors.white),
        ),
        Gap(8.h),
        Text(
          'MedTrack',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        Gap(16.h),
        Text(
          'Create your account',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onSurface,
          ),
        ),
        Gap(4.h),
        Text(
          'Start managing your health today.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp, color: AppColors.onSurfaceVariant),
        ),
      ],
    );
  }
}
