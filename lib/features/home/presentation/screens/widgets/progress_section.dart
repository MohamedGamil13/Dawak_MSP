import 'package:dawak/features/home/presentation/screens/widgets/daily_card.dart';
import 'package:dawak/features/home/presentation/screens/widgets/hyderation_card.dart';
import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: DailyGoalCard()),

        SizedBox(width: 16),

        Expanded(child: HydrationCard()),
      ],
    );
  }
}
