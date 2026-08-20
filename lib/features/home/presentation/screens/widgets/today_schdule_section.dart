import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/home/presentation/screens/widgets/medication_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TodayScheduleSection extends StatelessWidget {
  const TodayScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today's Schedule",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
            Row(
              children: [
                const _PageIndicator(isActive: true),
                Gap(6.w),
                const _PageIndicator(),
                Gap(6.w),
                const _PageIndicator(),
              ],
            ),
          ],
        ),
        Gap(16.h),
        const MedicationCard(
          name: 'Amoxicillin',
          type: 'Pill',
          dose: '500mg',
          time: '08:00 AM',
          icon: Icons.medication_outlined,
        ),
        Gap(16.h),
        const MedicationCard(
          name: 'Insulin Glargine',
          type: 'Injection',
          dose: '10 Units',
          time: '09:00 AM',
          icon: Icons.vaccines_outlined,
        ),
        Gap(16.h),
        const MedicationCard(
          name: 'Vitamin D3',
          type: '',
          dose: '2000 IU',
          time: 'Taken 07:30 AM',
          isTaken: true,
        ),
      ],
    );
  }
}

class _PageIndicator extends StatelessWidget {
  final bool isActive;

  const _PageIndicator({this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.r,
      height: 8.r,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.surfaceContainerHigh,
        shape: BoxShape.circle,
      ),
    );
  }
}
