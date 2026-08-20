import 'package:dawak/app_colors.dart';
import 'package:dawak/ui/widgets/auth_divider.dart';
import 'package:dawak/ui/widgets/google_signin_section.dart';
import 'package:dawak/ui/widgets/login_form.dart';
import 'package:dawak/ui/widgets/login_header.dart';
import 'package:dawak/ui/widgets/sign_up_section.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
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
                    // =====================================
                    // HEADER SECTION
                    // =====================================
                    LoginHeader(),

                    SizedBox(height: 24),

                    // =====================================
                    // LOGIN FORM SECTION
                    // =====================================
                    LoginForm(),

                    SizedBox(height: 20),

                    // =====================================
                    // DIVIDER SECTION
                    // =====================================
                    AuthDivider(),

                    SizedBox(height: 16),

                    // =====================================
                    // SOCIAL LOGIN SECTION
                    // =====================================
                    SocialLoginSection(),

                    SizedBox(height: 20),

                    // =====================================
                    // SIGN UP SECTION
                    // =====================================
                    SignUpSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
