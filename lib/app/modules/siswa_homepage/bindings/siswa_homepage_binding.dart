import 'package:get/get.dart';

import '../controllers/siswa_homepage_controller.dart';

class SiswaHomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaHomepageController>(
      () => SiswaHomepageController(),
    );
  }
}
