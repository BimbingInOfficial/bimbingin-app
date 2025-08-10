import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/mini_circular_stat.dart';
import 'package:bimbingin_app/app/core/widgets/recomendation_card.dart';
import 'package:bimbingin_app/app/core/widgets/topbanner_homepage.dart';
import 'package:flutter/material.dart';

class GuruHomepageView extends StatelessWidget {
  const GuruHomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBanner(
            greeting: 'Halo Tenti! 👋',
            title: 'Gaya mengajar dominan\nAnda telah teridentifikasi!',
            subtitle: 'Yuk, optimalkan cara mengajar sesuai dengan gaya Anda',
            percent: 78,
            label: 'Expert',
          ),
          Padding(
            padding: EdgeInsets.all(AppSpacing.xl),
            child: Text(
              'Distribusi Gaya Mengajar',
              style: AppTypography.titleLarge.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          SizedBox(height: 19),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: AppSpacing.lg,
              runSpacing: AppSpacing.lg,
              children: const [
                MiniCircularStat(
                  color: AppColors.primary,
                  percent: 65,
                  label: 'Facilitator',
                ),
                MiniCircularStat(
                  color: Color(0xFF4CAF50),
                  percent: 52,
                  label: 'Formal Authority',
                ),
                MiniCircularStat(
                  color: Color(0xFFFFA000),
                  percent: 48,
                  label: 'Personal Model',
                ),
                MiniCircularStat(
                  color: Color(0xFFE91E63),
                  percent: 43,
                  label: 'Delegator',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSpacing.xl),
            child: RecommendationCard(
              title: 'Rekomendasi Pembelajaran',
              subtitle: 'Berdasarkan gaya mengajar dominan Anda',
              items: const [
                'Gunakan jurnal ilmiah, artikel akademik, dan buku referensi untuk memperkuat pemahaman.',
                'Buat target spesifik untuk setiap sesi pengajaran.',
                'Gunakan tools seperti Notion, Zotero, atau Trello untuk mengatur sumber belajar dan progres.',
                'Dorong siswa untuk menulis refleksi atau berdiskusi dengan mentor untuk menguji pemahaman.',
              ],
              // opsional:
              // radius: 24,
              // gradientColors: [AppColors.primaryDark, AppColors.primaryLight],
            ),
          ),
        ],
      ),
    );
  }
}
