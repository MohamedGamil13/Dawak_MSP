import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/home/presentation/screens/widgets/add_medicine_app_bar.dart';
import 'package:dawak/features/home/presentation/screens/widgets/add_medicine_bottom_actions.dart';
import 'package:dawak/features/home/presentation/screens/widgets/dosage_frequency_section.dart';
import 'package:dawak/features/home/presentation/screens/widgets/medicine_category_section.dart';
import 'package:dawak/features/home/presentation/screens/widgets/medicine_name_section.dart';
import 'package:dawak/features/home/presentation/screens/widgets/reminder_time_section.dart';
import 'package:dawak/features/home/presentation/screens/widgets/total_stock_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddMedicineScreen extends StatefulWidget {
  const AddMedicineScreen({super.key});

  @override
  State<AddMedicineScreen> createState() => _AddMedicineScreenState();
}

class _AddMedicineScreenState extends State<AddMedicineScreen> {
  String selectedCategory = 'Tablet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AddMedicineAppBar(),
      bottomNavigationBar: AddMedicineBottomActions(
        onSave: () {},
        onCancel: () {
          Navigator.pop(context);
        },
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 120.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MedicineNameSection(),

              Gap(24.h),

              MedicineCategorySection(
                selectedCategory: selectedCategory,
                onCategoryChanged: (category) {
                  setState(() {
                    selectedCategory = category;
                  });
                },
              ),

              Gap(24.h),

              const DosageFrequencySection(),

              Gap(24.h),

              const TotalStockSection(),

              Gap(24.h),

              Container(height: 1, color: AppColors.surfaceContainerHigh),

              Gap(20.h),

              const ReminderTimesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
