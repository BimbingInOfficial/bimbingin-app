import 'package:bimbingin_app/app/core/widgets/curve_bottom_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import 'circular_score.dart';

class TopbannerHomepage extends StatelessWidget {
  final String greeting;
  final String title;
  final String subtitle;
  final double percent;  // 0..100
  final String label;
  final double curveHeight;

  const TopbannerHomepage({
    super.key,
    required this.greeting,
    required this.title,
    required this.subtitle,
    required this.percent,
    required this.label,
    this.curveHeight = 30,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedBottomBanner(
      curveHeight: curveHeight,
      includeSafeTopPadding: true,
      padding: EdgeInsets.fromLTRB(
        AppSpacing.xl,
        AppSpacing.xl, // safe area ditambahkan otomatis oleh wrapper
        AppSpacing.xl,
        AppSpacing.xxl + curveHeight / 2, // ruang ekstra agar arc tidak potong konten
      ),
      color: AppColors.primary,
      overlayStyle: SystemUiOverlayStyle.light, // ikon status bar terang
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greeting,
            style: AppTypography.labelLarge.copyWith(
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            title,
            style: AppTypography.headlineMedium.copyWith(
              color: Colors.white,
              height: 1.2,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            subtitle,
            style: AppTypography.bodyMedium.copyWith(
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Center(
            child: CircularScore(
              percent: percent,
              label: label,
              size: 200,
            ),
          ),
        ],
      ),
    );
  }
}
