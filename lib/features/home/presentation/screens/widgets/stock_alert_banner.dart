import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class StockAlertBanner extends StatefulWidget {
  const StockAlertBanner({super.key});

  @override
  State<StockAlertBanner> createState() => _StockAlertBannerState();
}

class _StockAlertBannerState extends State<StockAlertBanner> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFFFFDAD6),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning_amber_rounded, color: Color(0xFFBA1A1A)),
          Gap(8.w),
          Expanded(
            child: Text(
              'Paracetamol: 3 pills remaining',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF93000A),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isVisible = false;
              });
            },
            icon: const Icon(Icons.close, color: Color(0xFF93000A)),
          ),
        ],
      ),
    );
  }
}
