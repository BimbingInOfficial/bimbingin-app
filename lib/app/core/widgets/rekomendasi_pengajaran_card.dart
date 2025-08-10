import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

class RekomendasiItem {
  final IconData icon;
  final String title;
  final String description;
  final Color color;        // warna utama item (ikon & bg lembut)
  final bool highlighted;   // item yang sedang direkomendasikan/terpilih
  final VoidCallback? onTap;

  const RekomendasiItem({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    this.highlighted = false,
    this.onTap,
  });
}

class RekomendasiPengajaranCard extends StatelessWidget {
  final String headerTitle;          // "Rekomendasi Pengajaran"
  final IconData headerIcon;         // ikon lampu
  final List<RekomendasiItem> items; // daftar rekomendasi

  const RekomendasiPengajaranCard({
    super.key,
    required this.headerTitle,
    required this.headerIcon,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(headerIcon, color: AppColors.primary, size: 20),
              ),
              const SizedBox(width: AppSpacing.md),
              Text(
                headerTitle,
                style: AppTypography.titleLarge.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),

          // Items dengan jarak 17px antar item
          ...List.generate(items.length, (index) {
            final item = items[index];
            return Padding(
              padding: EdgeInsets.only(bottom: index == items.length - 1 ? 0 : 17),
              child: _ItemTile(item: item),
            );
          }),
        ],
      ),
    );
  }
}

class _ItemTile extends StatelessWidget {
  final RekomendasiItem item;
  const _ItemTile({required this.item});

  @override
  Widget build(BuildContext context) {
    final bg = item.color.withOpacity(0.12);
    final fg = item.color;

    final content = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon / state
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: item.highlighted ? fg : Colors.transparent,
              shape: BoxShape.circle,
              border: item.highlighted ? null : Border.all(color: fg, width: 2),
            ),
            alignment: Alignment.center,
            child: Icon(
              item.highlighted ? Icons.check_rounded : item.icon,
              size: 16,
              color: item.highlighted ? Colors.white : fg,
            ),
          ),
          const SizedBox(width: AppSpacing.md),

          // Texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTypography.titleMedium.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  item.description,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    if (item.onTap == null) return content;

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: item.onTap,
        child: content,
      ),
    );
  }
}
