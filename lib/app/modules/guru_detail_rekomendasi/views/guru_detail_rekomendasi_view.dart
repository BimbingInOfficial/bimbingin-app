import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/activity_card.dart';
import 'package:bimbingin_app/app/core/widgets/curve_bottom_banner.dart';
import 'package:bimbingin_app/app/core/widgets/implementasi_rekomendasi.dart';
import 'package:bimbingin_app/app/core/widgets/rekomendasi_pengajaran_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/guru_detail_rekomendasi_controller.dart';

class GuruDetailRekomendasiView
    extends GetView<GuruDetailRekomendasiController> {
  const GuruDetailRekomendasiView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurvedBottomBanner(
              curveHeight: 36, // kedalaman lengkung
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.xl,
                vertical: AppSpacing.lg,
              ),
              overlayStyle: SystemUiOverlayStyle.light, // status bar icon putih
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primary, AppColors.primaryLight],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // greeting
                    Text(
                      'Halo Tenti! 👋',
                      style: AppTypography.labelLarge.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: AppSpacing.sm),

                    // title besar (2 baris)
                    Text(
                      'Strategi Mengajar Terbaik\nuntuk Anda Sudah Siap!',
                      style: AppTypography.headlineLarge.copyWith(
                        color: Colors.white,
                        height: 1.15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md),

                    // subtitle + icon bintang
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Yuk, optimalkan pembelajaran dengan gaya siswa Anda!',
                            style: textTheme.bodyMedium?.copyWith(
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                        ),
                        SizedBox(width: AppSpacing.md),
                        const Icon(
                          Icons.auto_awesome,
                          size: 20,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AppSpacing.xl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Panduan Pengajaran \nKelompok Biologi Collaborative",
                    style: AppTypography.headlineLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 19),
                  RekomendasiPengajaranCard(
                    headerTitle: 'Rekomendasi Pengajaran',
                    headerIcon: Icons.lightbulb_rounded,
                    items: const [
                      RekomendasiItem(
                        icon: Icons.forum_rounded,
                        title: 'Fokus pada diskusi kelompok',
                        description:
                            'Berikan waktu lebih banyak untuk diskusi antar siswa. Siswa collaborative belajar lebih efektif melalui interaksi',
                        color: AppColors.primary,
                        highlighted: true,
                      ),
                      RekomendasiItem(
                        icon: Icons.groups_2_rounded,
                        title: 'Peer Teaching',
                        description:
                            'Dorong siswa untuk saling mengajar, Siswa yang paham dapat membantu temannya yang kesulitan.',
                        color: Color(0xFF8B5CF6), // ungu muda
                      ),
                      RekomendasiItem(
                        icon: Icons.emoji_events_rounded,
                        title: 'Reward Kolaborasi',
                        description:
                            'Berikan penghargaan untuk kelompok yang menunjukkan kerjasama terbaik.',
                        color: Color(0xFFFF8A65), // oranye lembut
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.xl),
                  Text(
                    "Aktivitas Pembelajaran",
                    style: AppTypography.headlineLarge.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  ActivityCard(
                    icon: Icons.description_rounded,
                    iconGradEnd: Color(0xffEFF6C1),
                    iconGradStart: Color(0xffDCEC80),
                    duration: '15 menit',
                    status: 'Mudah',
                    title: 'Think-Pair-Share',
                    caption:
                        'Siswa berfikir individu, berdiskusi berpasangan, lalu berbagi ke kelas.',
                    onTap: () {
                      // TODO: navigate
                    },
                  ),
                  SizedBox(height: 15),
                  ActivityCard(
                    icon: Icons.video_call_outlined,
                    iconGradEnd: Color(0xff9FE5F4),
                    iconGradStart: Color(0xffD9F5F9),
                    duration: '45 menit',
                    status: 'Mudah',
                    title: 'Jigsaw Method',
                    caption:
                        'Setiap siswa menjadi ahli satu topik, lalu mengajar ke anggota kelompok.',
                    onTap: () {
                      // TODO: navigate
                    },
                  ),
                  SizedBox(height: 15),
                  ActivityCard(
                    icon: Icons.description_rounded,
                    iconGradEnd: Color(0xffFFB3BA),
                    iconGradStart: Color(0xffFFDFDF),
                    duration: '60 menit',
                    status: 'Mudah',
                    title: 'Problem-Based Learning',
                    caption:
                        'Kelompok memecahkan masalah real-world secara bersama-sama.',
                    onTap: () {
                      // TODO: navigate
                    },
                  ),
                  SizedBox(height: AppSpacing.xl),
                  ImplementasiRekomendasi(
                    headerTitle: 'Tips Implementasi',
                    headerIcon: Icons.grade_rounded,
                    items: const [
                      ImplementasiSection(
                        icon: Icons.access_time_rounded,
                        title: 'Manajemen waktu',
                        color: AppColors.primary,
                        bullets: [
                          'Berikan timer untuk setiap aktivitas',
                          'Buat checkpoint di tengah diskusi',
                          'Siapkan aktivitas backup jika selesai lebih cepat',
                        ],
                      ),
                      ImplementasiSection(
                        icon: Icons.visibility_rounded,
                        title: 'Monitoring Kelompok',
                        color: Color(0xFF8B5CF6), // ungu
                        bullets: [
                          'Berkeliling untuk mengamati diskusi',
                          'Catat siswa yang dominan/pasif',
                          'Berikan pertanyaan pengarah jika stuck',
                        ],
                      ),
                      ImplementasiSection(
                        icon: Icons.emoji_events_rounded,
                        title: 'Evaluasi Proses',
                        color: Color(0xFFFF6F61), // merah lembut
                        bullets: [
                          'Refleksi kelompok di akhir sesi',
                          'Peer assessment antar anggota',
                          'Self-evaluation individual',
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.xxl),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
