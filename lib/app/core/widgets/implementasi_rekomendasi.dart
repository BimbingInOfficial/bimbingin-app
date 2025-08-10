import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

class ImplementasiSection {
  final IconData icon;
  final String title;
  final Color color;          // warna utama section (ikon + bullet + bg lembut)
  final List<String> bullets; // daftar poin

  const ImplementasiSection({
    required this.icon,
    required this.title,
    required this.color,
    required this.bullets,
  });
}

class ImplementasiRekomendasi extends StatelessWidget {
  final String headerTitle;               // "Tips Implementasi"
  final IconData headerIcon;              // ikon bintang
  final List<ImplementasiSection> items;  // daftar section
  final double sectionSpacing;            // jarak antar section

  const ImplementasiRekomendasi({
    super.key,
    required this.headerTitle,
    required this.headerIcon,
    required this.items,
    this.sectionSpacing = 16,
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
                  color: AppColors.accent.withOpacity(0.18),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(headerIcon, color: AppColors.accent, size: 20),
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

          // Sections
          ...List.generate(items.length, (i) {
            final s = items[i];
            return Padding(
              padding: EdgeInsets.only(
                bottom: i == items.length - 1 ? 0 : sectionSpacing,
              ),
              child: _SectionTile(section: s),
            );
          }),
        ],
      ),
    );
  }
}

class _SectionTile extends StatelessWidget {
  final ImplementasiSection section;
  const _SectionTile({required this.section});

  @override
  Widget build(BuildContext context) {
    final bg = section.color.withOpacity(0.12);
    final fg = section.color;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ikon kategori
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: fg.withOpacity(0.18),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(section.icon, color: fg, size: 16),
          ),
          const SizedBox(width: AppSpacing.md),

          // Judul + bullets
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  section.title,
                  style: AppTypography.titleMedium.copyWith(
                    fontWeight: FontWeight.w700,
                    color: fg, // judul berwarna sesuai kategori
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                ...List.generate(section.bullets.length, (i) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: i == section.bullets.length - 1 ? 0 : AppSpacing.xs,
                    ),
                    child: _BulletItem(
                      text: section.bullets[i],
                      color: fg,
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BulletItem extends StatelessWidget {
  final String text;
  final Color color;
  const _BulletItem({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bullet titik kecil
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 7),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        // Teks
        Expanded(
          child: Text(
            text,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ),
      ],
    );
  }
}
