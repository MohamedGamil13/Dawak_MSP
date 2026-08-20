import 'package:flutter/material.dart';

class WelcomeTitleSection extends StatelessWidget {
  const WelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 600;

    return Column(
      children: [
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
        if (isWide) ...[
          const SizedBox(height: 12),
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
        ],
      ],
    );
  }
}
