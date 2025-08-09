import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/choose_role_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/guru_chatbot/bindings/guru_chatbot_binding.dart';
import '../modules/guru_chatbot/views/guru_chatbot_view.dart';
import '../modules/guru_homepage/bindings/guru_homepage_binding.dart';
import '../modules/guru_homepage/views/guru_homepage_view.dart';
import '../modules/guru_profilepage/bindings/guru_profilepage_binding.dart';
import '../modules/guru_profilepage/views/guru_profilepage_view.dart';
import '../modules/guru_ruangbelajar/bindings/guru_ruangbelajar_binding.dart';
import '../modules/guru_ruangbelajar/views/guru_ruangbelajar_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';
import '../modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.auth;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.auth,
      page: () => const ChooseRoleView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.GURU_HOMEPAGE,
      page: () => const GuruHomepageView(),
      binding: GuruHomepageBinding(),
    ),
    GetPage(
      name: _Paths.GURU_CHATBOT,
      page: () => const GuruChatbotView(),
      binding: GuruChatbotBinding(),
    ),
    GetPage(
      name: _Paths.GURU_RUANGBELAJAR,
      page: () => const GuruRuangbelajarView(),
      binding: GuruRuangbelajarBinding(),
    ),
    GetPage(
      name: _Paths.GURU_PROFILEPAGE,
      page: () => const GuruProfilepageView(),
      binding: GuruProfilepageBinding(),
    ),
    GetPage(
      name: _Paths.ROOT,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
  ];
}
