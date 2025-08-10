import 'package:get/get.dart';
import '../controllers/siswa_personal_asisten_controller.dart';

class SiswaPersonalAsistenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaPersonalAsistenController>(
      () => SiswaPersonalAsistenController(),
    );
  }
}
