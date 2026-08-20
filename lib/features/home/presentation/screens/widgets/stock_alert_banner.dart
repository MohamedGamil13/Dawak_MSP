import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFDAD6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning_amber_rounded, color: Color(0xFFBA1A1A)),

          const SizedBox(width: 8),

          const Expanded(
            child: Text(
              'Paracetamol: 3 pills remaining',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF93000A),
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
