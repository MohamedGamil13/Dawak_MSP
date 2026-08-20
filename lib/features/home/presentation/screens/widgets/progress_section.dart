import 'package:dawak/features/home/presentation/screens/widgets/daily_card.dart';
import 'package:dawak/features/home/presentation/screens/widgets/hyderation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: DailyGoalCard()),
        Gap(16.w),
        const Expanded(child: HydrationCard()),
      ],
    );
  }
}
