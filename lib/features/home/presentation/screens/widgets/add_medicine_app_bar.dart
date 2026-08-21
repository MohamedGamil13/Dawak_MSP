import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMedicineAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddMedicineAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.surface,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Add New Medicine',
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.onSurface,
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.all(8.r),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.onSurface, size: 24.sp),
        ),
      ),

      actions: [SizedBox(width: 48.w)],

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: Container(height: 1.h, color: AppColors.surfaceContainerHigh),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64.h);
}
