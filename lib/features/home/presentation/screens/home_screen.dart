import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/home/presentation/screens/widgets/home_bottom_nav_bar.dart';
import 'package:dawak/features/home/presentation/screens/widgets/home_header.dart';
import 'package:dawak/features/home/presentation/screens/widgets/progress_section.dart';
import 'package:dawak/features/home/presentation/screens/widgets/stock_alert_banner.dart';
import 'package:dawak/features/home/presentation/screens/widgets/today_schdule_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const HomeBottomNavBar(currentIndex: 0),
      body: SafeArea(
        child: Column(
          children: [
            const HomeHeader(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 24.h),
                child: Column(
                  children: [
                    const StockAlertBanner(),
                    Gap(24.h),
                    const TodayScheduleSection(),
                    Gap(24.h),
                    const ProgressSection(),
                    Gap(80.h),
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
