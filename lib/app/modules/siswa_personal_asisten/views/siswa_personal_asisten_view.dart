import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/curve_bottom_banner.dart';
import 'package:bimbingin_app/app/core/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/siswa_personal_asisten_controller.dart';

class SiswaPersonalAsistenView extends GetView<SiswaPersonalAsistenController> {
  const SiswaPersonalAsistenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            // Header dengan back button dan title
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.primary, AppColors.primaryLight],
                ),
              ),
              child: Column(
                children: [
                  // Status bar area
                  const SizedBox(height: 40),

                  // Header content
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Asisten Belajar',
                            style: AppTypography.headlineMedium.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // TODO: Implement star/favorite action
                          },
                          icon: const Icon(
                            Icons.auto_awesome,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Subtitle dengan curve
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xl,
                      vertical: AppSpacing.lg,
                    ),
                    child: Text(
                      'Yuk kenali gaya belajarmu bareng Bimbi!',
                      style: AppTypography.headlineLarge.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  // Curve bottom
                  CustomPaint(
                    size: const Size(double.infinity, 36),
                    painter: CurvePainter(),
                  ),
                ],
              ),
            ),

            // Chat area
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    // Chat messages
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(AppSpacing.lg),
                        children: [
                          // Message from Bimbi 1
                          _buildBimbiMessage(
                            'Halo! Aku Bimbi, asisten belajarmu 😊',
                            '14:30',
                          ),
                          const SizedBox(height: AppSpacing.md),

                          // Message from Bimbi 2
                          _buildBimbiMessage(
                            'Berdasarkan hasil kuisionermu, kamu punya gaya belajar Kolaboratif! Aku siap bantu kamu belajar lebih efektif 📚',
                            '14:30',
                          ),
                          const SizedBox(height: AppSpacing.md),

                          // Message from user 1
                          _buildUserMessage(
                            'Halo Bimbi! Aku lagi bingung nih cara belajar matematika yang efektif',
                            '14:32',
                          ),
                          const SizedBox(height: AppSpacing.md),

                          // Message from Bimbi 3
                          _buildBimbiMessage(
                            'Wah, matematika memang challenging! Untuk gaya belajar kolaboratifmu, aku sarankan belajar bareng teman. Coba bentuk study group 2-3 orang dan diskusikan soal-soal sulit bersama 🧑‍🤝‍🧑',
                            '14:32',
                          ),
                          const SizedBox(height: AppSpacing.md),

                          // Message from user 2
                          _buildUserMessage(
                            'Ohh iya betul, aku emang lebih paham kalau dijelasin sama teman. Tapi gimana caranya biar diskusinya efektif?',
                            '14:32',
                          ),
                        ],
                      ),
                    ),

                    // Quick choices section
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.lg),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pilihan Cepat:',
                            style: AppTypography.bodyLarge.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),

                          // Quick choice buttons
                          Wrap(
                            spacing: AppSpacing.sm,
                            runSpacing: AppSpacing.sm,
                            children: [
                              _buildQuickChoiceButton('📖 Belajar hari ini'),
                              _buildQuickChoiceButton(
                                '🎯 Strategi buat ulangan',
                              ),
                              _buildQuickChoiceButton('💭 Refleksi mingguan'),
                              _buildQuickChoiceButton('👥 Diskusi kelompok'),
                              _buildQuickChoiceButton('🤝 Partner belajar'),
                              _buildQuickChoiceButton('💡 Brainstorming ide'),
                            ],
                          ),

                          const SizedBox(height: AppSpacing.lg),

                          // Input field and send button
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                      width: 1,
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      hintText: 'Ask me anything...',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: AppSpacing.lg,
                                        vertical: AppSpacing.md,
                                      ),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              const SizedBox(width: AppSpacing.md),
                              Container(
                                decoration: const BoxDecoration(
                                  color: AppColors.primary,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    // TODO: Implement send message
                                  },
                                  icon: const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Navbar untuk siswa
            Navbar(
              currentIndex: 1, // Index 1 untuk Personal Asisten
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

  Widget _buildBimbiMessage(String message, String time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.smart_toy, color: Colors.white, size: 20),
        ),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(message, style: AppTypography.bodyMedium),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUserMessage(String message, String time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  message,
                  style: AppTypography.bodyMedium.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person, color: Colors.white, size: 20),
        ),
      ],
    );
  }

  Widget _buildQuickChoiceButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withOpacity(0.3), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: AppTypography.bodySmall.copyWith(
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// Custom painter for the curve
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.8,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
