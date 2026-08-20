import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/auth_divider.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/google_signin_section.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/login_form.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/login_header.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/sign_up_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Container(
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.outlineVariant.withValues(alpha: 0.30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 12.r,
                  offset: Offset(0, 4.r),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const LoginHeader(),
                Gap(24.h),
                const LoginForm(),
                Gap(20.h),
                const AuthDivider(),
                Gap(16.h),
                const SocialLoginSection(),
                Gap(20.h),
                const SignUpSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
