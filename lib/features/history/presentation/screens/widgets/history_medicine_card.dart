import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum HistoryStatus { completed, missed }

class HistoryRecord {
  final String medicineName;
  final String subtitle;
  final IconData icon;
  final HistoryStatus status;

  const HistoryRecord({
    required this.medicineName,
    required this.subtitle,
    required this.icon,
    required this.status,
  });
}

class HistoryMedicationCard extends StatelessWidget {
  const HistoryMedicationCard({super.key, required this.record, this.onDelete});

  final HistoryRecord record;
  final VoidCallback? onDelete;

  bool get _isCompleted {
    return record.status == HistoryStatus.completed;
  }

  @override
  Widget build(BuildContext context) {
    final Color statusColor = _isCompleted
        ? AppColors.secondary
        : AppColors.error;

    final Color iconBackground = _isCompleted
        ? AppColors.surfaceContainer
        : AppColors.errorContainer.withOpacity(0.4);

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.outlineVariant.withOpacity(0.2)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D0F172A),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: double.infinity,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),

          const SizedBox(width: 10),

          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBackground,
            ),
            child: Icon(record.icon, color: statusColor, size: 24),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  record.medicineName,
                  style: const TextStyle(
                    color: AppColors.onSurface,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  record.subtitle,
                  style: TextStyle(
                    color: _isCompleted
                        ? AppColors.onSurfaceVariant
                        : AppColors.error,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: onDelete,
            icon: const Icon(
              Icons.delete_outline,
              color: AppColors.outlineVariant,
            ),
          ),

          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
