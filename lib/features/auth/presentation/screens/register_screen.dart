import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/auth_divider.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/google_signin_section.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/sign_up_form.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/sign_up_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.w),
            child: Container(
              padding: EdgeInsets.all(24.w),
              decoration: BoxDecoration(
                color: AppColors.surfaceContainerLowest,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    blurRadius: 24.r,
                    offset: Offset(0, 8.r),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SignUpHeader(),
                  Gap(32.h),
                  const SignUpForm(),
                  const AuthDivider(),
                  Gap(24.h),
                  const SocialLoginSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
