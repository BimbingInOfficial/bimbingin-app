import 'package:get/get.dart';

import '../controllers/guru_detail_rekomendasi_controller.dart';

class GuruDetailRekomendasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruDetailRekomendasiController>(
      () => GuruDetailRekomendasiController(),
    );
  }
}
