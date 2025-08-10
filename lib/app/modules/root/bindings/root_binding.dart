import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    print('RootBinding dependencies called');
    Get.put<RootController>(RootController());
    print('RootController put successfully');
  }
}
