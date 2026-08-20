import 'package:dawak/features/auth/presentation/screens/widgets/auth_divider.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/google_signin_section.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/sign_up_form.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/sign_up_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.10),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SignUpHeader(),

                    SizedBox(height: 32),

                    SignUpForm(),

                    AuthDivider(),

                    SizedBox(height: 24),

                    SocialLoginSection(),

                    SizedBox(height: 32),

                    // SignInSection(),
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
