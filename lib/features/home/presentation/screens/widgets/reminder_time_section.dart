import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/home/presentation/screens/widgets/reminder_time_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ReminderTimesSection extends StatefulWidget {
  const ReminderTimesSection({super.key});

  @override
  State<ReminderTimesSection> createState() => _ReminderTimesSectionState();
}

class _ReminderTimesSectionState extends State<ReminderTimesSection> {
  final List<ReminderTime> reminderTimes = [
    ReminderTime(
      time: '08:00 AM',
      label: 'Morning',
      icon: Icons.light_mode,
      isMorning: true,
    ),
    ReminderTime(
      time: '08:00 PM',
      label: 'Evening',
      icon: Icons.dark_mode,
      isMorning: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reminder Times',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(999.r),
              ),
              child: Text(
                '${reminderTimes.length} Active',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.onPrimaryContainer,
                ),
              ),
            ),
          ],
        ),

        Gap(12.h),

        ...reminderTimes.asMap().entries.map((entry) {
          final index = entry.key;
          final reminder = entry.value;

          return Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: ReminderTimeCard(
              reminderTime: reminder,
              onDelete: () {
                setState(() {
                  reminderTimes.removeAt(index);
                });
              },
            ),
          );
        }),

        Gap(4.h),

        InkWell(
          onTap: () async {
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (time == null) return;

            final formattedTime = time.format(context);

            setState(() {
              reminderTimes.add(
                ReminderTime(
                  time: formattedTime,
                  label: 'Custom',
                  icon: Icons.alarm,
                  isMorning: false,
                ),
              );
            });
          },
          borderRadius: BorderRadius.circular(12.r),
          child: Container(
            width: double.infinity,
            height: 56.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.outlineVariant, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_circle, color: AppColors.primary, size: 20.sp),

                Gap(8.w),

                Text(
                  'Add Another Time',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
