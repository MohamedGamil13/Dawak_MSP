import 'package:dawak/features/auth/presentation/screens/login_screen.dart';
import 'package:dawak/features/onboarding/presentation/screens/widgets/welcome_screen_body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WelcomeScreenBody(
          onGetStarted: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          onLogin: () {},
        ),
      ),
    );
  }
}
