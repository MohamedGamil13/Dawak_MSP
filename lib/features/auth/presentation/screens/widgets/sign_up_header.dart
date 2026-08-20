import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.primaryContainer,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(
            Icons.medical_services,
            size: 28,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'MedTrack',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),

        const SizedBox(height: 16),

        const Text(
          'Create your account',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.onSurface,
          ),
        ),

        const SizedBox(height: 4),

        const Text(
          'Start managing your health today.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: AppColors.onSurfaceVariant),
        ),
      ],
    );
  }
}
