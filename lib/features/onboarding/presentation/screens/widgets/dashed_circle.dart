import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashedCircle extends StatelessWidget {
  const DashedCircle({super.key, required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DottedBorder(
        options: CircularDottedBorderOptions(
          dashPattern: [8.w, 6.w],
          strokeWidth: 2.w,
          color: color,
        ),
        child: const SizedBox.expand(),
      ),
    );
  }
}
