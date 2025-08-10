import 'package:get/get.dart';
import '../controllers/siswa_profilepage_controller.dart';

class SiswaProfilepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaProfilepageController>(() => SiswaProfilepageController());
  }
}
