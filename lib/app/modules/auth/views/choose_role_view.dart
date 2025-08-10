import 'package:bimbingin_app/app/core/widgets/app_button.dart';
import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/modules/auth/views/login_guru_view.dart';
import 'package:bimbingin_app/app/modules/auth/views/login_siswa_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class ChooseRoleView extends GetView<AuthController> {
  const ChooseRoleView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          // Hero image + overlay
          SizedBox(
            width: double.infinity,
            height: size.height * 0.8,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/hero_role.png', fit: BoxFit.cover),
                Container(color: AppColors.primary.withOpacity(0.45)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              // Card lebih tinggi dan rounded, shadow
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 40),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 24,
                    offset: const Offset(0, -8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Mengajar dan Belajar\nLebih Efektif Sesuai Gayamu!',
                    textAlign: TextAlign.center,
                    style: AppTypography.headlineMedium.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Masuk dan nikmati pengalaman yang terbaik',
                    textAlign: TextAlign.center,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textTertiary,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 36),
                  RoleButton(
                    text: 'Masuk Sebagai Guru',
                    color: AppColors.primary,
                    textColor: AppColors.textInverse,
                    onPressed: () => Get.to(() => const LoginGuruView()),
                  ),
                  const SizedBox(height: 18),
                  RoleButton(
                    text: 'Masuk Sebagai Siswa',
                    color: AppColors.primaryDark,
                    textColor: AppColors.textInverse,
                    onPressed: () => Get.to(() => const LoginSiswaView()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
