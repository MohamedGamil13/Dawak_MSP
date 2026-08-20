import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isTaken
                ? const Color(0xFF6FFBBE)
                : AppColors.surfaceContainerHigh,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 12.r,
              offset: Offset(0, 4.r),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Container(
              width: 6.w,
              height: 92.h,
              color: isTaken ? const Color(0xFF6FFBBE) : AppColors.primary,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.w),
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
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.onSurface,
                                    decoration: isTaken
                                        ? TextDecoration.lineThrough
                                        : null,
                                  ),
                                ),
                              ),
                              if (!isTaken && type.isNotEmpty) ...[
                                Gap(8.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.w,
                                    vertical: 4.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.surfaceContainer,
                                    borderRadius: BorderRadius.circular(999.r),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        icon,
                                        size: 14.sp,
                                        color: AppColors.onSurfaceVariant,
                                      ),
                                      Gap(4.w),
                                      Text(
                                        type,
                                        style: TextStyle(
                                          fontSize: 12.sp,
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
                          Gap(8.h),
                          Row(
                            children: [
                              Text(
                                dose,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.onSurfaceVariant,
                                  decoration: isTaken
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Icon(
                                  Icons.circle,
                                  size: 5.r,
                                  color: AppColors.outlineVariant,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  time,
                                  style: TextStyle(
                                    fontSize: 16.sp,
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
                    Gap(12.w),
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
        width: 48.r,
        height: 48.r,
        decoration: const BoxDecoration(
          color: Color(0x336FFBBE),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.check_circle, color: Color(0xFF4EDEA3)),
      );
    }

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(999.r),
      child: Container(
        width: 48.r,
        height: 48.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primary, width: 2.w),
        ),
        child: const Icon(Icons.check, color: AppColors.primary),
      ),
    );
  }
}
