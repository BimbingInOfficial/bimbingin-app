import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SiswaPersonalAsistenController extends GetxController {
  //TODO: Implement SiswaPersonalAsistenController

  final count = 0.obs;

  void increment() => count.value++;

  void onTabSelected(int index) {
    // Routing berdasarkan tab yang dipilih
    switch (index) {
      case 0: // Beranda
        Get.offAllNamed(Routes.siswaHomepage);
        break;
      case 1: // Personal Asisten
        // Tetap di halaman ini
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
