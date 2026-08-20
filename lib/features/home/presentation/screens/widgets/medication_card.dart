import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MedicationCard extends StatelessWidget {
  final String name;
  final String type;
  final String dose;
  final String time;
  final IconData? icon;
  final bool isTaken;

  const MedicationCard({
    super.key,
    required this.name,
    required this.type,
    required this.dose,
    required this.time,
    this.icon,
    this.isTaken = false,
  });

  @override
  Widget build(BuildContext context) {
    final cardOpacity = isTaken ? 0.75 : 1.0;

    return Opacity(
      opacity: cardOpacity,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isTaken
                ? const Color(0xFF6FFBBE)
                : AppColors.surfaceContainerHigh,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Container(
              width: 6,
              height: 92,
              color: isTaken ? const Color(0xFF6FFBBE) : AppColors.primary,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  name,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.onSurface,
                                    decoration: isTaken
                                        ? TextDecoration.lineThrough
                                        : null,
                                  ),
                                ),
                              ),

                              if (!isTaken && type.isNotEmpty) ...[
                                const SizedBox(width: 8),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.surfaceContainer,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        icon,
                                        size: 14,
                                        color: AppColors.onSurfaceVariant,
                                      ),

                                      const SizedBox(width: 4),

                                      Text(
                                        type,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              Text(
                                dose,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.onSurfaceVariant,
                                  decoration: isTaken
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(
                                  Icons.circle,
                                  size: 5,
                                  color: AppColors.outlineVariant,
                                ),
                              ),

                              Flexible(
                                child: Text(
                                  time,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: isTaken
                                        ? FontWeight.w400
                                        : FontWeight.w600,
                                    color: isTaken
                                        ? const Color(0xFF4EDEA3)
                                        : AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 12),

                    _MedicationStatusButton(isTaken: isTaken),
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

class _MedicationStatusButton extends StatelessWidget {
  final bool isTaken;

  const _MedicationStatusButton({required this.isTaken});

  @override
  Widget build(BuildContext context) {
    if (isTaken) {
      return Container(
        width: 48,
        height: 48,
        decoration: const BoxDecoration(
          color: Color(0x336FFBBE),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.check_circle, color: Color(0xFF4EDEA3)),
      );
    }

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(999),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primary, width: 2),
        ),
        child: const Icon(Icons.check, color: AppColors.primary),
      ),
    );
  }
}
