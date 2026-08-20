import 'package:dawak/features/onboarding/presentation/screens/welcome_screen.dart';
import 'package:dawak/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Dawak());
}

class Dawak extends StatelessWidget {
  const Dawak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dawak',
          theme: ThemeData(
            fontFamily: 'Inter',
            scaffoldBackgroundColor: const Color(0xFFF8F9FF),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF005A71),
            ),
          ),
          home: const WelcomeScreen(),
        );
      },
    );
  }
}
