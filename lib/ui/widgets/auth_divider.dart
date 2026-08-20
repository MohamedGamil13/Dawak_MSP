import 'package:dawak/app_colors.dart';
import 'package:flutter/material.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: AppColors.outlineVariant)),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'OR CONTINUE WITH',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              color: AppColors.outline,
            ),
          ),
        ),

        Expanded(child: Divider(color: AppColors.outlineVariant)),
      ],
    );
  }
}
