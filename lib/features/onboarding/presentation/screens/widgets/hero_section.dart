import 'dart:math' as math;

import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/onboarding/presentation/screens/widgets/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroIllustration extends StatelessWidget {
  final AnimationController spinController;

  const HeroIllustration({super.key, required this.spinController});

  @override
  Widget build(BuildContext context) {
    final size = 256.r;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Main circular background
          Container(
            width: size,
            height: size,
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFEFF4FF),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 24.r,
                  offset: Offset(0, 8.r),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                "assets/images/welcome_image.jpg",
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.medication,
                    size: 100.r,
                    color: AppColors.primary,
                  );
                },
              ),
            ),
          ),

          // Rotating dashed ring
          AnimatedBuilder(
            animation: spinController,
            builder: (context, child) {
              return Transform.rotate(
                angle: spinController.value * 2 * math.pi,
                child: DashedCircle(
                  size: size,
                  color: const Color(0xFF81D1F0).withValues(alpha: 0.5),
                ),
              );
            },
          ),

          // Inner ring
          Container(
            width: size - 32.r,
            height: size - 32.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFD3E4FE).withValues(alpha: 0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
