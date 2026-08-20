import 'package:dawak/ui/widgets/action_button.dart';
import 'package:dawak/ui/widgets/hero_section.dart';
import 'package:dawak/ui/widgets/welcome_title_section.dart';
import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  final AnimationController spinController;
  final VoidCallback onGetStarted;
  final VoidCallback onLogin;

  const WelcomeContent({
    super.key,
    required this.spinController,
    required this.onGetStarted,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 448),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                HeroIllustration(spinController: spinController),
                const SizedBox(height: 32),
                const WelcomeTitleSection(),
                const SizedBox(height: 32),
                ActionButtons(onGetStarted: onGetStarted, onLogin: onLogin),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
