import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// RecommendationCard
/// A reusable blue gradient card with title, subtitle and bullet list items.
/// Place under: lib/app/core/widgets/recommendation_card.dart
class RecommendationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> items;
  final double radius;
  final EdgeInsets? padding;
  final List<Color>? gradientColors;

  const RecommendationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.items,
    this.radius = 20,
    this.padding,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    final colors = gradientColors ?? [AppColors.primary, AppColors.primaryLight];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      padding: padding ?? EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.titleLarge.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: AppSpacing.md),
          if (subtitle.isNotEmpty)
            Text(
              subtitle,
              style: AppTypography.bodyMedium.copyWith(
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          SizedBox(height: AppSpacing.lg),
          ...items.map((t) => Padding(
                padding: EdgeInsets.only(bottom: AppSpacing.md),
                child: _BulletItem(text: t),
              )),
        ],
      ),
    );
  }
}

class _BulletItem extends StatelessWidget {
  final String text;
  const _BulletItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // bullet dot
        Container(
          margin: EdgeInsets.only(top: 8),
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: AppSpacing.md),
        // text
        Expanded(
          child: Text(
            text,
            style: AppTypography.bodyLarge.copyWith(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
