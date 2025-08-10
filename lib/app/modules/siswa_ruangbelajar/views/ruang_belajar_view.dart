import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/navbar.dart';
import 'package:bimbingin_app/app/core/widgets/curve_bottom_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/siswa_ruangbelajar_controller.dart';

class RuangBelajarView extends GetView<SiswaRuangbelajarController> {
  const RuangBelajarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            // Header dengan background biru dan curve
            CurvedBottomBanner(
              curveHeight: 36,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primary, AppColors.primaryLight],
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              includeSafeTopPadding: true,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Kelompok Belajar',
                      style: AppTypography.headlineMedium.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Illustration of three people discussing
                  Image.asset(
                    'assets/images/ruang_belajar.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),

            // Main content area
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Section title
                    Text(
                      'Kelompok UTBK Collaborative',
                      style: AppTypography.headlineMedium.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),

                    // Guru Pembimbing section
                    _buildGuruPembimbingCard(),
                    const SizedBox(height: AppSpacing.lg),

                    // Siswa Collaborative section
                    _buildSiswaCollaborativeCard(),
                    const SizedBox(height: AppSpacing.lg),

                    // Metode Pembelajaran section
                    Text(
                      'Metode Pembelajaran',
                      style: AppTypography.headlineMedium.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),

                    _buildMetodeCard(
                      icon: Icons.forum,
                      title: 'Diskusi Kelompok',
                      description: 'Membahas materi bersama',
                      iconColor: Colors.green[700],
                      iconBgColor: Colors.green[50],
                    ),
                    const SizedBox(height: AppSpacing.sm),

                    _buildMetodeCard(
                      icon: Icons.play_circle_outline,
                      title: 'Peer Teaching',
                      description: 'Saling mengajar antar anggota',
                      iconColor: Colors.blue[700],
                      iconBgColor: Colors.blue[50],
                    ),
                    const SizedBox(height: AppSpacing.sm),

                    _buildMetodeCard(
                      icon: Icons.add_circle_outline,
                      title: 'Project Based',
                      description: 'Mengerjakan tugas bersama',
                      iconColor: Colors.pink[700],
                      iconBgColor: Colors.pink[50],
                    ),
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

  Widget _buildGuruPembimbingCard() {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.person, color: AppColors.primary, size: 24),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Text(
              'Sari S.Pd',
              style: AppTypography.bodyLarge.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F0F8), // Very light blue-grey
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Text(
              'Expert Style',
              style: AppTypography.bodySmall.copyWith(
                color: const Color(0xFF2E5BBA), // Dark blue text
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSiswaCollaborativeCard() {
    final siswaList = [
      'Rahmah Aisyah',
      'Rifqi Setiawan',
      'Wildan Niam',
      'Hanifah Shabirah',
      'Nadia Septiani',
      'Nurul Azizah',
      'Syarif Rousyan',
    ];

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.groups,
                  color: AppColors.primary,
                  size: 24,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Text(
                'Siswa Collaborative',
                style: AppTypography.bodyLarge.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          ...siswaList.map(
            (siswa) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      siswa,
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.sm,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F0F8), // Very light blue-grey
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      'Collaborative Style',
                      style: AppTypography.bodySmall.copyWith(
                        color: const Color(0xFF2E5BBA), // Dark blue text
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetodeCard({
    required IconData icon,
    required String title,
    required String description,
    Color? iconColor,
    Color? iconBgColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBgColor ?? AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: iconColor ?? AppColors.primary, size: 24),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  description,
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
  }
}
