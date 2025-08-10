import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/curve_bottom_banner.dart';
import 'package:bimbingin_app/app/core/widgets/join_room_button.dart';
import 'package:bimbingin_app/app/core/widgets/ruang_belajar_card.dart';
import 'package:bimbingin_app/app/core/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/siswa_ruangbelajar_controller.dart';

class SiswaRuangbelajarView extends GetView<SiswaRuangbelajarController> {
  const SiswaRuangbelajarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CurvedBottomBanner(
                      curveHeight: 36, // kedalaman lengkung
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.xl,
                        vertical: AppSpacing.lg,
                      ),
                      overlayStyle:
                          SystemUiOverlayStyle.light, // status bar icon putih
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [AppColors.primary, AppColors.primaryLight],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Title di kiri
                            Expanded(
                              child: Text(
                                'Ruang Belajar',
                                style: AppTypography.headlineMedium.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: AppSpacing.lg),

                            // Tombol reusable di kanan
                            JoinRoomButton(
                              onPressed: () {
                                // TODO: aksi gabung (dialog / route / bottom sheet)
                              },
                            ),
                          ],
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
                              'Daftar Ruang Belajar',
                              style: AppTypography.headlineLarge,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          RuangBelajarCard(
                            title: 'Persiapan UTBK',
                            siswaCount: 280,
                            guruCount: 30,
                            kodeRuangan: '7ztlbhtn',
                          ),
                          const SizedBox(height: AppSpacing.md),
                          RuangBelajarCard(
                            title: 'Persiapan UTBK',
                            siswaCount: 280,
                            guruCount: 30,
                            kodeRuangan: '7ztlbhtn',
                          ),
                          const SizedBox(height: AppSpacing.md),
                          RuangBelajarCard(
                            title: 'Persiapan UTBK',
                            siswaCount: 280,
                            guruCount: 30,
                            kodeRuangan: '7ztlbhtn',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xxxl),
                  ],
                ),
              ),
            ),
            // Navbar untuk siswa
            Navbar(
              currentIndex: 2, // Index 2 untuk Ruang Belajar
              onTap: (index) {
                controller.onTabSelected(index);
              },
              userType: 'siswa',
            ),
          ],
        ),
      ),
    );
  }
}
