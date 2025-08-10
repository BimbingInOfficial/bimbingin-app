import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/activity_card.dart';
import 'package:bimbingin_app/app/core/widgets/impelementation_tips_card.dart';
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
          const TopbannerHomepage(
            greeting: 'Halo Tenti! 👋',
            title: 'Gaya mengajar dominan\nAnda telah teridentifikasi!',
            subtitle: 'Yuk, optimalkan cara mengajar sesuai dengan gaya Anda',
            percent: 78,
            label: 'Expert',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Distribusi Gaya Mengajar',
                  style: AppTypography.titleLarge.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 19),
                Wrap(
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
                RecommendationCard(
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
                SizedBox(height: 20),
                Text(
                  "Aktivitas Harian (15-45 menit)",
                  style: AppTypography.titleLarge.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 15),
                ActivityCard(
                  icon: Icons.description_rounded,
                  iconGradEnd: Color(0xffEFF6C1),
                  iconGradStart: Color(0xffDCEC80),
                  duration: '15 menit',
                  status: 'Mudah',
                  title: 'Mind Mapping Harian',
                  caption: 'Menyusun peta konsep untuk digunakan saat mengajar',
                  onTap: () {
                    // TODO: navigate
                  },
                ),
                SizedBox(height: 15),
                ActivityCard(
                  icon: Icons.video_call_outlined,
                  iconGradEnd: Color(0xff9FE5F4),
                  iconGradStart: Color(0xffD9F5F9),
                  duration: '30 menit',
                  status: 'Mudah',
                  title: 'Video Pembelajaran',
                  caption:
                      'Tonton video edukatif dan buat catatan visual untuk bahan ajar',
                  onTap: () {
                    // TODO: navigate
                  },
                ),
                SizedBox(height: 15),
                ActivityCard(
                  icon: Icons.description_rounded,
                  iconGradEnd: Color(0xffFFB3BA),
                  iconGradStart: Color(0xffFFDFDF),
                  duration: '45 menit',
                  status: 'Mudah',
                  title: 'Diagram & Infografis',
                  caption:
                      'Buat diagram alur untuk menjelaskan proses kompleks',
                  onTap: () {
                    // TODO: navigate
                  },
                ),
                SizedBox(height: 20),
                ImplementationTipsCard(
                  tips: const [
                    'Gunakan aktivitas yang sudah dikenal siswa, lalu tambahkan elemen baru secara bertahap.',
                    'Lakukan refleksi setiap dua minggu untuk menilai efektivitas metode dan respons siswa.',
                    'Gabungkan mind mapping, video, dan infografis dalam satu sesi untuk variasi dan penguatan konsep.',
                  ],
                ),
                SizedBox(height: 18,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
