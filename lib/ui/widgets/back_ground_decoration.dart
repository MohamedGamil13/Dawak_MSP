import 'package:dawak/ui/widgets/floating_icon.dart';
import 'package:dawak/ui/widgets/glow_circle.dart';
import 'package:flutter/material.dart';

class BackGroundDecoration extends StatelessWidget {
  final AnimationController floatController;

  const BackGroundDecoration({super.key, required this.floatController});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: GlowCircle(
                size: 400,
                color: const Color(0xFFB9EAFF).withValues(alpha: 0.30),
              ),
            ),
            Positioned(
              bottom: -150,
              right: -150,
              child: GlowCircle(
                size: 500,
                color: const Color(0xFFD3E4FE).withValues(alpha: 0.50),
              ),
            ),
            Positioned(
              top: size.height * 0.25,
              right: size.width * 0.25,
              child: FloatingIcon(
                controller: floatController,
                icon: Icons.medication,
                size: 48,
                color: const Color(0xFF005A71),
              ),
            ),
            Positioned(
              bottom: size.height * 0.33,
              left: size.width * 0.25,
              child: FloatingIcon(
                controller: floatController,
                icon: Icons.receipt_long,
                size: 64,
                color: const Color(0xFF006C49),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
