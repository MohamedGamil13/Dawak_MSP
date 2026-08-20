import 'package:dawak/features/onboarding/presentation/screens/widgets/back_ground_decoration.dart';
import 'package:dawak/features/onboarding/presentation/screens/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

class WelcomeScreenBody extends StatefulWidget {
  final VoidCallback onGetStarted;

  const WelcomeScreenBody({super.key, required this.onGetStarted});

  @override
  State<WelcomeScreenBody> createState() => _WelcomeScreenBodyState();
}

class _WelcomeScreenBodyState extends State<WelcomeScreenBody>
    with TickerProviderStateMixin {
  late final AnimationController _floatController;
  late final AnimationController _spinController;

  @override
  void initState() {
    super.initState();
    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(reverse: true);

    _spinController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void dispose() {
    _floatController.dispose();
    _spinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundDecoration(floatController: _floatController),
        WelcomeContent(
          spinController: _spinController,
          onGetStarted: widget.onGetStarted,
        ),
      ],
    );
  }
}
