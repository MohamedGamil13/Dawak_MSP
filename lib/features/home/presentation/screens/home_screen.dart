import 'package:dawak/features/home/presentation/screens/widgets/home_bottom_nav_bar.dart';
import 'package:dawak/features/home/presentation/screens/widgets/home_header.dart';
import 'package:dawak/features/home/presentation/screens/widgets/progress_section.dart';
import 'package:dawak/features/home/presentation/screens/widgets/stock_alert_banner.dart';
import 'package:dawak/features/home/presentation/screens/widgets/today_schdule_section.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: const HomeBottomNavBar(),

      body: const SafeArea(
        child: Column(
          children: [
            HomeHeader(),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(20, 16, 20, 24),
                child: Column(
                  children: [
                    StockAlertBanner(),

                    SizedBox(height: 24),

                    TodayScheduleSection(),

                    SizedBox(height: 24),

                    ProgressSection(),

                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
