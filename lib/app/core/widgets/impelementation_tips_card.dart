import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

class ImplementationTipsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> tips;

  final double radius;
  final EdgeInsetsGeometry padding;

  const ImplementationTipsCard({
    super.key,
    required this.tips,
    this.title = 'Tips Implementasi',
    this.subtitle = 'Cara efektif menerapkan aktivitas pengajaran',
    this.radius = 20,
    this.padding = const EdgeInsets.all(AppSpacing.xl),
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final titleStyle =
        (textTheme.titleLarge ?? AppTypography.titleLarge).copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w700,
        );
    final subtitleStyle =
        (textTheme.bodyMedium ?? AppTypography.bodyMedium).copyWith(
          color: AppColors.textSecondary,
        );
    final bulletTextStyle =
        (textTheme.bodyMedium ?? AppTypography.bodyMedium).copyWith(
          color: AppColors.textPrimary,
          height: 1.45,
        );

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: const Color(0xFFEBECF0), width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000), // 10% hitam
            offset: Offset(0, 1),     // ~Y=0.95
            blurRadius: 2,            // ~1.9
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle),
          const SizedBox(height: AppSpacing.sm),
          Text(subtitle, style: subtitleStyle),
          const SizedBox(height: AppSpacing.lg),

          // Bullet list
          ...tips.map((t) => _BulletItem(text: t, style: bulletTextStyle)),
        ],
      ),
    );
  }
}

class _BulletItem extends StatelessWidget {
  final String text;
  final TextStyle style;

  const _BulletItem({required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bullet dot biru
          Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.only(top: 6),
            decoration: const BoxDecoration(
              color: Color(0xFF1E88E5), // AppColors.primary
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: AppSpacing.md),

          // Teks (wrap ke beberapa baris)
          Expanded(child: Text(text, style: style)),
        ],
      ),
    );
  }
}
