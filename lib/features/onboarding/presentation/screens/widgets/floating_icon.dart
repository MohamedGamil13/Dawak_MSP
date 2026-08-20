import 'dart:math' as math;

import 'package:flutter/material.dart';

class FloatingIcon extends StatelessWidget {
  final AnimationController controller;
  final IconData icon;
  final double size;
  final Color color;
  final double opacity;
  final double amplitude;

  const FloatingIcon({
    super.key,
    required this.controller,
    required this.icon,
    required this.size,
    required this.color,
    this.opacity = 0.20,
    this.amplitude = 20,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final offset = math.sin(controller.value * math.pi) * amplitude;
        return Transform.translate(offset: Offset(0, -offset), child: child);
      },
      child: Opacity(
        opacity: opacity,
        child: Icon(icon, size: size, color: color),
      ),
    );
  }
}
