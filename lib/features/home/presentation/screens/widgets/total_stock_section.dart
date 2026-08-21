import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TotalStockSection extends StatelessWidget {
  const TotalStockSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Total Stock ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              TextSpan(
                text: '(Optional)',
                style: TextStyle(fontSize: 12.sp, color: AppColors.outline),
              ),
            ],
          ),
        ),

        Gap(8.h),

        SizedBox(
          width: 170.w,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: '0',
              prefixIcon: const Icon(
                Icons.inventory_2,
                color: AppColors.outlineVariant,
              ),
              filled: true,
              fillColor: AppColors.surfaceContainerLowest,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColors.outlineVariant),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColors.outlineVariant),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(
                  color: AppColors.primary,
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),

        Gap(6.h),

        Text(
          "We'll remind you when you're running low.",
          style: TextStyle(fontSize: 12.sp, color: AppColors.outlineVariant),
        ),
      ],
    );
  }
}
