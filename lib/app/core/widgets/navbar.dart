import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class Navbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final String userType; // 'guru' atau 'siswa'

  const Navbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.userType = 'guru', // default untuk guru
  });

  @override
  Widget build(BuildContext context) {
    // Hilangkan ripple/splash & highlight
    final theme = Theme.of(context).copyWith(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    );

    // Label sesuai user type
    final labels = userType == 'siswa'
        ? ['Beranda', 'Personal Asisten', 'Ruang Belajar', 'Profil']
        : ['Beranda', 'Personal Asisten', 'Ruang Mengajar', 'Profil'];

    return Theme(
      data: theme,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed, // no shifting
        backgroundColor: AppColors.background,
        elevation: 8,
        // Warna & tipografi - Optimized untuk interaksi yang jelas
        selectedItemColor: AppColors.primary, // 🔵 Biru untuk page aktif
        unselectedItemColor:
            AppColors.textSecondary, // ⚫ Abu-abu untuk page tidak aktif
        showSelectedLabels: true,
        showUnselectedLabels: true, // label selalu tampil
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.primary, // 🔵 Biru untuk label aktif
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.textSecondary, // ⚫ Abu-abu untuk label tidak aktif
        ),
        // Hapus haptic & animasi klik yang terasa "heboh"
        enableFeedback: false,
        // Bedain ukuran ikon saat aktif vs non-aktif (subtle)
        selectedIconTheme: const IconThemeData(
          size: 26,
          color: AppColors.primary, // 🔵 Biru untuk ikon aktif
        ),
        unselectedIconTheme: const IconThemeData(
          size: 24,
          color: AppColors.textSecondary, // ⚫ Abu-abu untuk ikon tidak aktif
        ),
        // Item
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: labels[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: labels[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_outlined),
            activeIcon: Icon(Icons.groups),
            label: labels[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: labels[3],
          ),
        ],
      ),
    );
  }
}
