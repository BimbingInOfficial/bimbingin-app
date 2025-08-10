import 'package:bimbingin_app/app/modules/guru_homepage/views/guru_homepage_view.dart';
import 'package:bimbingin_app/app/modules/guru_profilepage/views/guru_profilepage_view.dart';
import 'package:bimbingin_app/app/modules/guru_ruangbelajar/views/guru_ruangbelajar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/navbar.dart';
import '../../guru_chatbot/views/guru_chatbot_view.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = const [
      GuruHomepageView(),
      GuruChatbotView(),
      GuruRuangbelajarView(),
      GuruProfilepageView(),
    ];

    return Obx(
      () => Scaffold(
        body: SafeArea(
          top: true,
          bottom: false,
          child: IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              GuruHomepageView(),
              GuruChatbotView(),
              GuruRuangbelajarView(),
              GuruProfilepageView(),
            ],
          ),
        ),
        bottomNavigationBar: Navbar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.onTabSelected,
        ),
      ),
    );
  }
}
