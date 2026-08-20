import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/auth/presentation/screens/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: LoginScreenBody(),
    );
  }
}
