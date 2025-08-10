import 'package:get/get.dart';

class SiswaHomepageController extends GetxController {
  final currentIndex = 0.obs;

  void onTabSelected(int index) {
    currentIndex.value = index;
  }
}
