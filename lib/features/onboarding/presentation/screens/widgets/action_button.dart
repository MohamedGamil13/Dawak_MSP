import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onGetStarted;
  final VoidCallback onLogin;

  const ActionButtons({
    super.key,
    required this.onGetStarted,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Get Started
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: onGetStarted,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF005A71),
              foregroundColor: Colors.white,
              elevation: 4,
              shadowColor: Colors.black.withValues(alpha: 0.10),
              shape: const StadiumBorder(),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get Started',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, size: 18),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Login
        SizedBox(
          width: double.infinity,
          height: 52,
          child: OutlinedButton(
            onPressed: onLogin,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF005A71),
              backgroundColor: const Color(0xFFF8F9FF),
              side: const BorderSide(color: Color(0xFFBEC8CD)),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
