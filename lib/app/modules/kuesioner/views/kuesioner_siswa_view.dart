import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/kuesioner_controller.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/curve_bottom_banner.dart';

class KuesionerSiswaView extends GetView<KuesionerController> {
  const KuesionerSiswaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // Header dengan CurvedBottomBanner
          CurvedBottomBanner(
            color: AppColors.primary,
            curveHeight: 20,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Status bar dan navigation
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Get.back(),
                    ),
                    Expanded(
                      child: Text(
                        'Personalisasi',
                        style: AppTypography.headlineSmall.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 48), // Balance dengan back button
                  ],
                ),
                const SizedBox(height: 16),

                // Judul utama dan icon bintang
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Yuk Jawab Biar BimbingIn Tahu Gaya Belajarmu',
                        style: AppTypography.displaySmall.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Icon bintang dengan gambar
                    Image.asset(
                      'assets/images/star.png',
                      width: 28,
                      height: 28,
                      // color: AppColors.accent,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),

          // Content area dengan scroll
          Expanded(
            child: SingleChildScrollView(
              padding: AppSpacing.paddingLg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Pertanyaan 1
                  _buildQuestionCard(
                    'Seberapa penting bagimu mempelajari hal-hal yang bisa diterapkan dalam kehidupan nyata?',
                    0, // 01 selected
                  ),
                  SizedBox(height: AppSpacing.lg),

                  // Pertanyaan 2
                  _buildQuestionCard(
                    'Seberapa senang kamu belajar dan berdiskusi bersama teman di kelas?',
                    1, // 02 selected
                  ),
                  SizedBox(height: AppSpacing.lg),

                  // Pertanyaan 3
                  _buildQuestionCard(
                    'Seberapa penting bagimu instruksi yang jelas dari guru saat belajar?',
                    2, // 03 selected
                  ),
                  SizedBox(height: AppSpacing.lg),

                  // Pertanyaan 4
                  _buildQuestionCard(
                    'Apakah kamu merasa harus memenuhi standar yang tinggi dalam belajar di kelas?',
                    3, // 04 selected
                  ),

                  // Spacing sebelum tombol
                  SizedBox(height: AppSpacing.xl),

                  // Tombol Selanjutnya
                  AppPrimaryButton(
                    text: 'Selanjutnya',
                    onPressed: () {
                      // TODO: Implement next action
                    },
                    isFullWidth: true,
                    size: AppButtonSize.large,
                  ),

                  // Bottom padding untuk memastikan tombol tidak tertutup
                  SizedBox(height: AppSpacing.lg),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionCard(String question, int selectedIndex) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          padding: AppSpacing.paddingLg,
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.menu_book_rounded,
                      color: AppColors.primary,
                      size: 24,
                    ),
                  ),
                  SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      question,
                      style: AppTypography.titleMedium.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.lg),

              // Skala Likert 1-5 dengan garis penghubung
              Stack(
                children: [
                  // Garis penghubung
                  Positioned.fill(
                    child: Center(
                      child: Container(height: 2, color: AppColors.border),
                    ),
                  ),

                  // Lingkaran rating yang bisa dipilih
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(5, (index) {
                      final isSelected = index == selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            // Update selected value
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primary
                                : Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.border,
                              width: 2,
                            ),
                            boxShadow: isSelected
                                ? [
                                    BoxShadow(
                                      color: AppColors.primary.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ]
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              '0${index + 1}',
                              style: AppTypography.titleMedium.copyWith(
                                color: isSelected
                                    ? Colors.white
                                    : AppColors.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),

              SizedBox(height: AppSpacing.sm),

              // Label skala
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '1 = Sangat Tidak Setuju',
                      style: AppTypography.caption.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                  SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      '5 = Sangat Setuju',
                      style: AppTypography.caption.copyWith(
                        color: AppColors.textSecondary,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
