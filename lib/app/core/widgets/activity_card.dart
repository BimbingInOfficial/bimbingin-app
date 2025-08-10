import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  // Gradien icon (atas -> bawah)
  final Color iconGradStart; // default: #EFF6C1
  final Color iconGradEnd;   // default: #DCEC80

  final String duration; // "15 menit"
  final String status;   // "Mudah"
  final String title;    // "Mind Mapping Harian"
  final String caption;  // "Menyusun peta konsep ..."
  final VoidCallback? onTap;

  const ActivityCard({
    super.key,
    required this.icon,
    this.iconGradStart = const Color(0xFFEFF6C1),
    this.iconGradEnd   = const Color(0xFFDCEC80),
    required this.duration,
    required this.status,
    required this.title,
    required this.caption,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    // Base text styles (hindari lint non-nullable ?? nullable)
    final baseTitle = textTheme.titleMedium ?? AppTypography.titleMedium;
    final baseBody  = textTheme.bodyMedium  ?? AppTypography.bodyMedium;
    final baseLabel = textTheme.labelSmall  ?? AppTypography.labelSmall;

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(20),
            // Stroke (Inside) – Flutter tidak punya align=inside, tapi visualnya seakan "inside" kalau border tipis.
            border: Border.all(
              color: const Color(0xFFEBECF0), // stroke dari Figma
              width: 1, // tipis agar terlihat seperti inside
            ),
            // Drop shadow halus (Y=0.95, Blur=1.9, Opacity=10%)
            boxShadow: const [
              BoxShadow(
                color: Color(0x1A000000), // 10% => 0x1A alpha
                offset: Offset(0, 1),     // ~0.95 dibulatkan ke 1
                blurRadius: 2,            // ~1.9 dibulatkan ke 2
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon badge dengan gradien vertikal
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [iconGradStart, iconGradEnd],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Icon(icon, size: 22, color: AppColors.textPrimary),
              ),
              const SizedBox(width: AppSpacing.lg),

              // Teks & chips
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title + chips
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: baseTitle.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        _InfoChip(
                          label: duration,
                          background: AppColors.primaryLight.withOpacity(0.18),
                          foreground: AppColors.primaryDark,
                          baseLabel: baseLabel,
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        _InfoChip(
                          label: status,
                          background: AppColors.success.withOpacity(0.18),
                          foreground: AppColors.success,
                          baseLabel: baseLabel,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: baseBody.copyWith(
                        color: AppColors.textSecondary,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final Color background;
  final Color foreground;
  final TextStyle baseLabel;

  const _InfoChip({
    required this.label,
    required this.background,
    required this.foreground,
    required this.baseLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: baseLabel.copyWith(
          color: foreground,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
