import 'package:dawak/app_colors.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            color: AppColors.primaryContainer,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.medical_services,
            size: 36,
            color: AppColors.primary,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          'MedTrack',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.64,
            color: AppColors.primary,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Manage your health with precision.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: AppColors.onSurfaceVariant),
        ),
      ],
    );
  }
}
