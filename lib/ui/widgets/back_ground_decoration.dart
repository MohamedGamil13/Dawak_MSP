import 'dart:developer';
import 'dart:math' as math;

import 'package:dawak/ui/widgets/action_button.dart';
import 'package:dawak/ui/widgets/glow_circle.dart';
import 'package:dawak/ui/widgets/hero_section.dart';
import 'package:flutter/material.dart';

class BackGroundDecoration extends StatefulWidget {
  const BackGroundDecoration({super.key});

  @override
  State<BackGroundDecoration> createState() => _BackGroundDecorationState();
}

class _BackGroundDecorationState extends State<BackGroundDecoration>
    with TickerProviderStateMixin {
  late final AnimationController _floatController;
  late final AnimationController _spinController;
  @override
  void dispose() {
    _floatController.dispose();
    _spinController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    // Floating animation
    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(reverse: true);

    // Rotating dashed ring
    _spinController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ============================================================
        // BACKGROUND DECORATIONS
        // ============================================================
        Positioned.fill(
          child: IgnorePointer(
            child: Stack(
              children: [
                // Top-left glow
                Positioned(
                  top: -100,
                  left: -100,
                  child: GlowCircle(
                    size: 400,
                    color: const Color(0xFFB9EAFF).withValues(alpha: 0.30),
                  ),
                ),

                // Bottom-right glow
                Positioned(
                  bottom: -150,
                  right: -150,
                  child: GlowCircle(
                    size: 500,
                    color: const Color(0xFFD3E4FE).withValues(alpha: 0.50),
                  ),
                ),

                // Floating medication icon
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  right: MediaQuery.of(context).size.width * 0.25,
                  child: AnimatedBuilder(
                    animation: _floatController,
                    builder: (context, child) {
                      final offset =
                          math.sin(_floatController.value * math.pi) * 20;

                      return Transform.translate(
                        offset: Offset(0, -offset),
                        child: const Opacity(
                          opacity: 0.20,
                          child: Icon(
                            Icons.medication,
                            size: 48,
                            color: Color(0xFF005A71),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Floating prescription icon
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.33,
                  left: MediaQuery.of(context).size.width * 0.25,
                  child: AnimatedBuilder(
                    animation: _floatController,
                    builder: (context, child) {
                      final offset =
                          math.sin(_floatController.value * math.pi) * 20;

                      return Transform.translate(
                        offset: Offset(0, -offset),
                        child: const Opacity(
                          opacity: 0.20,
                          child: Icon(
                            Icons.receipt_long,
                            size: 64,
                            color: Color(0xFF006C49),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 448),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ==================================================
                    // HERO IMAGE
                    // ==================================================
                    const SizedBox(height: 20),

                    HeroIllustration(spinController: _spinController),

                    const SizedBox(height: 32),

                    // ==================================================
                    // TITLE
                    // ==================================================
                    const Text(
                      'Dawak',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        height: 1.25,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.64,
                        color: Color(0xFF0B1C30),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // ==================================================
                    // SUBTITLE
                    // ==================================================
                    const Text(
                      'Your health, on schedule.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.55,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3F484C),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ==================================================
                    // DESCRIPTION
                    // ==================================================
                    if (MediaQuery.of(context).size.width >= 600)
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Never miss a dose again. Manage your medications '
                          'with clinical precision and effortless control.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6F787D),
                          ),
                        ),
                      ),

                    const SizedBox(height: 32),

                    // ==================================================
                    // BUTTONS
                    // ==================================================
                    ActionButtons(
                      onGetStarted: () {
                        log("Get Started =============>");
                      },
                      onLogin: () {
                        log("Login =============>");
                      },
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
