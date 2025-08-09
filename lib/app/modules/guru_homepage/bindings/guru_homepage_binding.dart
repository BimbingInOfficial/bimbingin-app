import 'package:get/get.dart';

import '../controllers/guru_homepage_controller.dart';

class GuruHomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruHomepageController>(
      () => GuruHomepageController(),
    );
  }
}
