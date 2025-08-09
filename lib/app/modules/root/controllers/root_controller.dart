import 'package:get/get.dart';

class RootController extends GetxController {
  final currentIndex = 0.obs;

  void onTabSelected(int i) {
    currentIndex.value = i;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
