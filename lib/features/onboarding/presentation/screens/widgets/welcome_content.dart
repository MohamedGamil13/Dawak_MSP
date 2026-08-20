import 'package:dawak/features/onboarding/presentation/screens/widgets/action_button.dart';
import 'package:dawak/features/onboarding/presentation/screens/widgets/hero_section.dart';
import 'package:dawak/features/onboarding/presentation/screens/widgets/welcome_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class WelcomeContent extends StatelessWidget {
  final AnimationController spinController;
  final VoidCallback onGetStarted;

  const WelcomeContent({
    super.key,
    required this.spinController,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(20.h),
              HeroIllustration(spinController: spinController),
              Gap(32.h),
              const WelcomeTitleSection(),
              Gap(32.h),
              ActionButtons(onGetStarted: onGetStarted),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
