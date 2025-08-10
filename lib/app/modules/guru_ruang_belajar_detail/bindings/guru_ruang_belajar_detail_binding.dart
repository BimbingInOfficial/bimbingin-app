import 'package:get/get.dart';

import '../controllers/guru_ruang_belajar_detail_controller.dart';

class GuruRuangBelajarDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruRuangBelajarDetailController>(
      () => GuruRuangBelajarDetailController(),
    );
  }
}
