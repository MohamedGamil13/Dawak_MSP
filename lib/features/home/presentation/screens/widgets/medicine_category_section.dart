import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MedicineCategorySection extends StatelessWidget {
  const MedicineCategorySection({
    super.key,
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  final String selectedCategory;
  final ValueChanged<String> onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    final categories = [
      (title: 'Tablet', icon: Icons.medication),
      (title: 'Capsule', icon: Icons.medication_liquid),
      (title: 'Syrup', icon: Icons.local_drink),
      (title: 'Injection', icon: Icons.vaccines),
      (title: 'Drops', icon: Icons.water_drop),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.onSurfaceVariant,
          ),
        ),

        Gap(12.h),

        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: categories.map((category) {
            final isSelected = selectedCategory == category.title;

            return InkWell(
              onTap: () {
                onCategoryChanged(category.title);
              },
              borderRadius: BorderRadius.circular(999.r),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primary
                      : AppColors.surfaceContainerLowest,
                  borderRadius: BorderRadius.circular(999.r),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.primary
                        : AppColors.outlineVariant,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      category.icon,
                      size: 18.sp,
                      color: isSelected
                          ? AppColors.white
                          : AppColors.onSurfaceVariant,
                    ),

                    Gap(8.w),

                    Text(
                      category.title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: isSelected
                            ? AppColors.white
                            : AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
