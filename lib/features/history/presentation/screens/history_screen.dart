import 'package:dawak/core/theme/app_colors.dart';
import 'package:dawak/features/history/presentation/screens/widgets/history_app_bar.dart';
import 'package:dawak/features/history/presentation/screens/widgets/history_filter_section.dart';
import 'package:dawak/features/history/presentation/screens/widgets/history_group.dart';
import 'package:dawak/features/history/presentation/screens/widgets/history_medicine_card.dart';
import 'package:dawak/features/history/presentation/screens/widgets/history_search_bar.dart';
import 'package:dawak/features/home/presentation/screens/widgets/home_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int selectedFilterIndex = 0;

  void _onFilterChanged(int index) {
    setState(() {
      selectedFilterIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: const HomeBottomNavBar(currentIndex: 1),
      body: SafeArea(
        child: Column(
          children: [
            const HistoryAppBar(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                child: Column(
                  children: [
                    const HistorySearchBar(),

                    const SizedBox(height: 16),

                    HistoryFilterSection(
                      selectedIndex: selectedFilterIndex,
                      onSelected: _onFilterChanged,
                    ),

                    const SizedBox(height: 24),

                    const HistoryGroup(
                      title: 'Today',
                      records: [
                        HistoryRecord(
                          medicineName: 'Atorvastatin',
                          subtitle: '8:15 AM • 20mg',
                          icon: Icons.medication,
                          status: HistoryStatus.completed,
                        ),
                        HistoryRecord(
                          medicineName: 'Vitamin D3',
                          subtitle: 'Missed • 1:00 PM',
                          icon: Icons.water_drop_outlined,
                          status: HistoryStatus.missed,
                        ),
                        HistoryRecord(
                          medicineName: 'Lisinopril',
                          subtitle: '2:30 PM • 10mg',
                          icon: Icons.receipt_long_outlined,
                          status: HistoryStatus.completed,
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    const HistoryGroup(
                      title: 'Yesterday',
                      records: [
                        HistoryRecord(
                          medicineName: 'Atorvastatin',
                          subtitle: '8:20 AM • 20mg',
                          icon: Icons.medication,
                          status: HistoryStatus.completed,
                        ),
                      ],
                    ),
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
