import 'package:get/get.dart';

import '../controllers/guru_profilepage_controller.dart';

class GuruProfilepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruProfilepageController>(
      () => GuruProfilepageController(),
    );
  }
}
