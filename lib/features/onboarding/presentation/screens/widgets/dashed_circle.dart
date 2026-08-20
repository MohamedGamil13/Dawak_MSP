import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

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
          dashPattern: const [8, 6],
          strokeWidth: 2,
          color: color,
        ),
        child: const SizedBox.expand(),
      ),
    );
  }
}
