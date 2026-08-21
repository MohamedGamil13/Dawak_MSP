import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/history/presentation/screens/history_screen.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      height: 65,
      backgroundColor: AppColors.surface,
      color: AppColors.primaryContainer,
      buttonBackgroundColor: AppColors.primaryContainer,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,

      items: [
        Icon(
          Icons.home,
          color: currentIndex == 0
              ? AppColors.white
              : AppColors.onSurfaceVariant,
        ),

        Icon(
          Icons.history,
          color: currentIndex == 1
              ? AppColors.white
              : AppColors.onSurfaceVariant,
        ),

        Icon(
          Icons.person_outline,
          color: currentIndex == 2
              ? AppColors.white
              : AppColors.onSurfaceVariant,
        ),
      ],

      onTap: (index) {
        if (index == currentIndex) return;

        switch (index) {
          case 0:
            Navigator.pop(context);
            break;

          case 1:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HistoryScreen()),
            );
            break;

          case 2:
            break;
        }
      },
    );
  }
}
