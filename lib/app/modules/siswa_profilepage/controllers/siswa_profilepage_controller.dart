import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SiswaProfilepageController extends GetxController {
  //TODO: Implement SiswaProfilepageController

  final count = 0.obs;

  void increment() => count.value++;

  void onTabSelected(int index) {
    // Routing berdasarkan tab yang dipilih
    switch (index) {
      case 0: // Beranda
        Get.offAllNamed(Routes.siswaHomepage);
        break;
      case 1: // Personal Asisten
        Get.offAllNamed(Routes.siswaPersonalAsisten);
        break;
      case 2: // Ruang Belajar
        Get.offAllNamed(Routes.SISWA_RUANGBELAJAR);
        break;
      case 3: // Profil
        // Tetap di halaman ini
        break;
    }
  }
}
