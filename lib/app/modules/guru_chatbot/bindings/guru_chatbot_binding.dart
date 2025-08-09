import 'package:get/get.dart';

import '../controllers/guru_chatbot_controller.dart';

class GuruChatbotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruChatbotController>(
      () => GuruChatbotController(),
    );
  }
}
