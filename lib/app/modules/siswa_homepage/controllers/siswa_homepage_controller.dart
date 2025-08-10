import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SiswaHomepageController extends GetxController {
  final currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Reset currentIndex ke 0 (Beranda) setiap kali controller diinisialisasi
    currentIndex.value = 0;
  }

  void onTabSelected(int index) {
    currentIndex.value = index;

    // Routing berdasarkan tab yang dipilih
    switch (index) {
      case 0: // Beranda
        // Tetap di homepage
        break;
      case 1: // Personal Asisten
        Get.offAllNamed(Routes.siswaPersonalAsisten);
        break;
      case 2: // Ruang Belajar
        Get.offAllNamed(Routes.siswaRuangBelajar);
        break;
      case 3: // Profil
        Get.offAllNamed(Routes.siswaProfilepage);
        break;
    }
  }
}
