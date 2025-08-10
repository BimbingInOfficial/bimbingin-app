import 'package:get/get.dart';

import '../controllers/siswa_ruangbelajar_controller.dart';

class SiswaRuangbelajarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaRuangbelajarController>(
      () => SiswaRuangbelajarController(),
    );
  }
}
