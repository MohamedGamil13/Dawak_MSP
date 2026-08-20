import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/auth_divider.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/google_signin_section.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/login_form.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/login_header.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/sign_up_section.dart';
import 'package:flutter/material.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 448),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.surfaceContainerLowest,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.outlineVariant.withValues(alpha: 0.30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LoginHeader(),

                  SizedBox(height: 24),

                  LoginForm(),

                  SizedBox(height: 20),

                  AuthDivider(),

                  SizedBox(height: 16),

                  SocialLoginSection(),

                  SizedBox(height: 20),

                  SignUpSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
