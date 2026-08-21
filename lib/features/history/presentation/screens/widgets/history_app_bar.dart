import 'package:dawak/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HistoryAppBar extends StatelessWidget {
  const HistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: AppColors.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _ProfileImage(),

          const Text(
            'MedTrack',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.surfaceContainerHigh,
        border: Border.all(color: AppColors.outlineVariant.withOpacity(0.3)),
      ),
      child: ClipOval(
        child: Image.network(
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAvQtzWETYWiXuZVSx0MbSOM275Fmt7T-Rb2hx03u1T_7-V-RGNjCl7GRnBcZ7DVZ9iXgzKdW9i2mWKianEHeZof28XTFY4ksrkMp1swVAHdMI3vH_nHTfA2XQCxrDcXAVqTRGsW4brTqdWXEdAKnv5QTChcWu_IfxmnXrjCP2pyXyCh9_o0wa9Svs11TixU-1A9mBhcGi_6U5FbUS7lGnjipFzogvdeyJzIEAuJ3VjuyKjWe-m4QP9',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.person, color: AppColors.onSurfaceVariant);
          },
        ),
      ),
    );
  }
}
