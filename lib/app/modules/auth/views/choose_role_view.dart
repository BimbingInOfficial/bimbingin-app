import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../widgets/role_button.dart';

class ChooseRoleView extends GetView<AuthController> {
  const ChooseRoleView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF1E88E5),
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
                Container(color: const Color(0xFF1E88E5).withOpacity(0.45)),
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
                color: Colors.white,
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
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: const Color(0xFF212121),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Masuk dan nikmati pengalaman yang terbaik',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF9E9E9E),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 36),
                  RoleButton(
                    text: 'Masuk Sebagai Guru',
                    color: const Color(0xFF2196F3), // Lebih vivid
                    textColor: Colors.white,
                    onPressed: () => controller.onRoleSelected('guru'),
                  ),
                  const SizedBox(height: 18),
                  RoleButton(
                    text: 'Masuk Sebagai Siswa',
                    color: const Color(0xFF1565C0),
                    textColor: Colors.white,
                    onPressed: () => controller.onRoleSelected('siswa'),
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
