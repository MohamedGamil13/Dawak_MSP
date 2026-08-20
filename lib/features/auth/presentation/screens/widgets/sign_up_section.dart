import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpSection extends StatelessWidget {
  const SignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Text(
            "Don't have an account? ",
            style: TextStyle(fontSize: 16, color: AppColors.onSurfaceVariant),
          ),

          InkWell(
            onTap: () {
              // TODO: MODIFY
              // Navigate to Sign Up Screen
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
