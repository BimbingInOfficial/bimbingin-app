import 'package:get/get.dart';

import '../controllers/guru_ruangbelajar_controller.dart';

class GuruRuangbelajarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruRuangbelajarController>(
      () => GuruRuangbelajarController(),
    );
  }
}
