import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/history/presentation/screens/widgets/history_medicine_card.dart';
import 'package:flutter/material.dart';

class HistoryGroup extends StatelessWidget {
  const HistoryGroup({super.key, required this.title, required this.records});

  final String title;
  final List<HistoryRecord> records;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.onBackground,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 16),

        ...records.map(
          (record) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: HistoryMedicationCard(record: record, onDelete: () {}),
          ),
        ),
      ],
    );
  }
}
