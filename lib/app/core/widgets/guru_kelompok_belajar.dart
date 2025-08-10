import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

class GuruKelompokBelajarCard extends StatelessWidget {
  final String title;         // ex: "Guru Pembimbing"
  final String guruName;      // ex: "Sari S.Pd"
  final String badgeLabel;    // ex: "Expert Style"
  final IconData icon;        // ex: Icons.person
  final VoidCallback? onTap;
  final Color? badgeBg;
  final Color? badgeFg;

  const GuruKelompokBelajarCard({
    super.key,
    required this.title,
    required this.guruName,
    required this.badgeLabel,
    this.icon = Icons.person,
    this.onTap,
    this.badgeBg,
    this.badgeFg,
  });

  @override
  Widget build(BuildContext context) {
    final bg = badgeBg ?? AppColors.primary.withOpacity(0.12);
    final fg = badgeFg ?? AppColors.primary;

    final card = Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar/icon bulat kiri
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(icon, color: AppColors.primary, size: 20),
          ),
          const SizedBox(width: AppSpacing.lg),

          // judul + nama
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // baris judul + badge kanan
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppTypography.titleMedium.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    // badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                        vertical: AppSpacing.sm,
                      ),
                      decoration: BoxDecoration(
                        color: bg,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        badgeLabel,
                        style: AppTypography.labelSmall.copyWith(color: fg),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xs),

                // nama guru
                Text(
                  guruName,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return onTap != null
        ? Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: onTap,
              child: card,
            ),
          )
        : card;
  }
}
