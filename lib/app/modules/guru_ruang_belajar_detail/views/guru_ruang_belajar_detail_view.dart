import 'package:bimbingin_app/app/core/widgets/curve_bottom_banner.dart';
import 'package:bimbingin_app/app/core/widgets/guru_kelompok_belajar.dart';
import 'package:bimbingin_app/app/core/widgets/navbar.dart';
import 'package:bimbingin_app/app/core/widgets/rekomendasi_button.dart';
import 'package:bimbingin_app/app/core/widgets/siswa_kelompok.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import '../controllers/guru_ruang_belajar_detail_controller.dart';

class GuruRuangBelajarDetailView
    extends GetView<GuruRuangBelajarDetailController> {
  const GuruRuangBelajarDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.surface,
      // === NAVBAR DI DETAIL PAGE ===
      bottomNavigationBar: Navbar(
        currentIndex: 2, // tab Ruang Belajar
        onTap: (i) {
          if (i == 0) Get.offAllNamed('/guru-home');        // contoh
          if (i == 1) Get.offAllNamed('/guru-chatbot');     // contoh
          if (i == 2) return;                               // stay here
          if (i == 3) Get.offAllNamed('/guru-profile');     // contoh
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedBottomBanner(
              curveHeight: 36, // kedalaman lengkung
              padding: const EdgeInsets.symmetric(
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
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Kelompok Belajar",
                    style: AppTypography.headlineLarge.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            // ---- Konten berikutnya halaman (placeholder) ----
            const SizedBox(height: AppSpacing.xl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Kelompok Biologi Collaborative',
                      style: AppTypography.headlineLarge,
                    ),
                  ),
                  const SizedBox(height: 11),
                  GuruKelompokBelajarCard(
                    title: 'Guru Pembimbing',
                    guruName: 'Sari S.Pd',
                    badgeLabel: 'Expert Style',
                    icon: Icons.groups_2, // opsional
                    onTap: () {}, // opsional
                  ),
                  SizedBox(height: 19),
                  SiswaKelompokCard(
                    groupTitle: 'Siswa Collaborative',
                    groupLearningStyle: 'Collaborative Style',
                    groupIcon: Icons.groups_rounded,
                    students: [
                      SiswaInfo(
                        name: 'Rahmah Aisyah',
                        learningStyle: 'Collaborative Style',
                      ),
                      SiswaInfo(
                        name: 'Rifqi Setiawan',
                        learningStyle: 'Collaborative Style',
                      ),
                      SiswaInfo(
                        name: 'Wildan Niam',
                        learningStyle: 'Collaborative Style',
                      ),
                      SiswaInfo(
                        name: 'Hanifah Shabirah',
                        learningStyle: 'Collaborative Style',
                      ),
                      SiswaInfo(
                        name: 'Nadia Septiani',
                        learningStyle: 'Collaborative Style',
                      ),
                      SiswaInfo(
                        name: 'Nurul Azizah',
                        learningStyle: 'Collaborative Style',
                      ),
                      SiswaInfo(
                        name: 'Syarif Rousyan',
                        learningStyle: 'Collaborative Style',
                      ),
                    ],
                  ),
                  SizedBox(height: 19),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Temukan Metode Terbaik!',
                      style: AppTypography.headlineLarge.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Cari tahu metode pengajaran paling efektif untuk\n'
                    'kelompok Anda. Klik tombol di bawah untuk memulai',
                    style: AppTypography.titleMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 19,),
                  RekomendasiButton(label: "Rekomendasi Metode", icon: Icons.lightbulb, onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
