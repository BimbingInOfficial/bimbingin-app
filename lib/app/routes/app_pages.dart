import 'package:get/get.dart';

import '../modules/guru_chatbot/bindings/guru_chatbot_binding.dart';
import '../modules/guru_chatbot/views/guru_chatbot_view.dart';
import '../modules/guru_homepage/bindings/guru_homepage_binding.dart';
import '../modules/guru_homepage/views/guru_homepage_view.dart';
import '../modules/guru_profilepage/bindings/guru_profilepage_binding.dart';
import '../modules/guru_profilepage/views/guru_profilepage_view.dart';
import '../modules/guru_ruang_belajar_detail/bindings/guru_ruang_belajar_detail_binding.dart';
import '../modules/guru_ruang_belajar_detail/views/guru_ruang_belajar_detail_view.dart';
import '../modules/guru_ruangbelajar/bindings/guru_ruangbelajar_binding.dart';
import '../modules/guru_ruangbelajar/views/guru_ruangbelajar_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.root;

  static final routes = [
    GetPage(
      name: _Paths.guruHomePage,
      page: () => const GuruHomepageView(),
      binding: GuruHomepageBinding(),
    ),
    GetPage(
      name: _Paths.guruChatBot,
      page: () => const GuruChatbotView(),
      binding: GuruChatbotBinding(),
    ),
    GetPage(
      name: _Paths.guruRuangBelajar,
      page: () => const GuruRuangbelajarView(),
      binding: GuruRuangbelajarBinding(),
    ),
    GetPage(
      name: _Paths.guruProfilePage,
      page: () => const GuruProfilepageView(),
      binding: GuruProfilepageBinding(),
    ),
    GetPage(
      name: _Paths.root,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.guruRuangBelajarDetail,
      page: () => const GuruRuangBelajarDetailView(),
      binding: GuruRuangBelajarDetailBinding(),
    ),
  ];
}
