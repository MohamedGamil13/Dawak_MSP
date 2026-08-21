import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ReminderTime {
  final String time;
  final String label;
  final IconData icon;
  final bool isMorning;

  ReminderTime({
    required this.time,
    required this.label,
    required this.icon,
    required this.isMorning,
  });
}

class ReminderTimeCard extends StatelessWidget {
  const ReminderTimeCard({
    super.key,
    required this.reminderTime,
    required this.onDelete,
  });

  final ReminderTime reminderTime;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final iconColor = reminderTime.isMorning
        ? AppColors.secondary
        : AppColors.primary;

    final iconBackground = reminderTime.isMorning
        ? AppColors.secondary.withValues(alpha: 0.10)
        : AppColors.primaryContainer.withValues(alpha: 0.15);

    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.outlineVariant),
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(reminderTime.icon, color: iconColor, size: 20.sp),
          ),

          Gap(12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reminderTime.time,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onSurface,
                  ),
                ),

                Gap(2.h),

                Text(
                  reminderTime.label,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: onDelete,
            icon: Icon(
              Icons.delete,
              color: AppColors.outlineVariant,
              size: 22.sp,
            ),
          ),
        ],
      ),
    );
  }
}
