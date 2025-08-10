import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/siswa_homepage_controller.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/activity_card.dart';
import '../../../core/widgets/impelementation_tips_card.dart';
import '../../../core/widgets/mini_circular_stat.dart';
import '../../../core/widgets/recomendation_card.dart';
import '../../../core/widgets/topbanner_homepage.dart';
import '../../../core/widgets/navbar.dart';

class SiswaHomepageView extends GetView<SiswaHomepageController> {
  const SiswaHomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top:
            false, // Ubah menjadi false agar background biru bisa full sampai atas
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SiswaHomeContent(), // Langsung tampilkan konten homepage
            ),
            // Navbar untuk siswa dengan debugging
            Obx(() {
              print(
                '🔄 Navbar rebuild - currentIndex: ${controller.currentIndex.value}',
              );
              return Navbar(
                currentIndex: controller.currentIndex.value,
                onTap: (index) {
                  print('👆 Tab tapped: $index');
                  controller.onTabSelected(index);
                },
                userType: 'siswa',
              );
            }),
          ],
        ),
      ),
    );
  }
}

// Content untuk homepage siswa
class SiswaHomeContent extends StatelessWidget {
  const SiswaHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopbannerHomepage(
            greeting: 'Halo Rahmah! 👋',
            title: 'Gaya belajar dominan\nAnda telah teridentifikasi!',
            subtitle: 'Yuk, optimalkan cara belajar sesuai dengan gaya Anda',
            percent: 78,
            label: 'Independent',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Distribusi Gaya Belajar',
                  style: AppTypography.titleLarge.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 19),
                // Ubah dari Wrap menjadi Row dengan Expanded untuk distribusi merata
                Row(
                  children: [
                    Expanded(
                      child: MiniCircularStat(
                        color: AppColors.primary,
                        percent: 65,
                        label: 'Collaborative',
                        size: 55, // Kurangi ukuran agar muat dalam satu baris
                      ),
                    ),
                    Expanded(
                      child: MiniCircularStat(
                        color: Color(0xFF4CAF50),
                        percent: 52,
                        label: 'Dependent',
                        size: 55,
                      ),
                    ),
                    Expanded(
                      child: MiniCircularStat(
                        color: Color(0xFFFFA000),
                        percent: 48,
                        label: 'Competitive',
                        size: 55,
                      ),
                    ),
                    Expanded(
                      child: MiniCircularStat(
                        color: Color(0xFFE91E63),
                        percent: 43,
                        label: 'Participant',
                        size: 55,
                      ),
                    ),
                    Expanded(
                      child: MiniCircularStat(
                        color: Color(0xFF9C27B0),
                        percent: 38,
                        label: 'Avoidant',
                        size: 55,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 19),
                RecommendationCard(
                  title: 'Rekomendasi Pembelajaran',
                  subtitle: 'Berdasarkan gaya belajar dominan Anda',
                  items: const [
                    'Tentukan waktu dan tempat belajar yang nyaman untuk diri Anda sendiri.',
                    'Gunakan buku, artikel, dan sumber daya online untuk memperdalam pemahaman.',
                    'Tentukan target yang jelas untuk setiap sesi belajar, agar lebih fokus dan termotivasi.',
                    'Manfaatkan aplikasi dan alat digital untuk mengatur dan melacak kemajuan belajar.',
                    'Jika ada hal yang tidak dipahami, cari tahu lebih lanjut melalui penelitian atau diskusi dengan orang lain.',
                  ],
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
                  caption:
                      'Buat peta pikiran untuk setiap mata pelajaran dengan warna berbeda',
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
                  caption: 'Tonton video edukatif dan buat catatan visual',
                  onTap: () {
                    // TODO: navigate
                  },
                ),
                SizedBox(height: 15),
                ActivityCard(
                  icon: Icons.add_chart,
                  iconGradEnd: Color(0xffFFB3BA),
                  iconGradStart: Color(0xffFFDFDF),
                  duration: '45 menit',
                  status: 'Sedang',
                  title: 'Diagram & Infografis',
                  caption: 'Buat diagram alur untuk memahami proses kompleks',
                  onTap: () {
                    // TODO: navigate
                  },
                ),
                SizedBox(height: 20),
                ImplementationTipsCard(
                  tips: const [
                    'Mulai dengan aktivitas harian yang mudah, lalu tingkatkan kompleksitas',
                    'Konsisten gunakan sistem warna yang sama untuk semua mata pelajaran',
                    'Evaluasi efektivitas setiap teknik setelah 2 minggu',
                  ],
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
