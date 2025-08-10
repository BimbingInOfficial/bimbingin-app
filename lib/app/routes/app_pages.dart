import 'package:bimbingin_app/app/modules/auth/views/login_guru_view.dart';
import 'package:bimbingin_app/app/modules/auth/views/login_siswa_view.dart';
import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/choose_role_view.dart';
import '../modules/guru_chatbot/bindings/guru_chatbot_binding.dart';
import '../modules/guru_chatbot/views/guru_chatbot_view.dart';
import '../modules/guru_homepage/bindings/guru_homepage_binding.dart';
import '../modules/guru_homepage/views/guru_homepage_view.dart';
import '../modules/guru_profilepage/bindings/guru_profilepage_binding.dart';
import '../modules/guru_profilepage/views/guru_profilepage_view.dart';
import '../modules/guru_ruangbelajar/bindings/guru_ruangbelajar_binding.dart';
import '../modules/guru_ruangbelajar/views/guru_ruangbelajar_view.dart';
import '../modules/kuesioner/bindings/kuesioner_binding.dart';
import '../modules/kuesioner/views/kuesioner_siswa_view.dart';
import '../modules/kuesioner/views/kuesioner_guru_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.auth;

  static final routes = [
    GetPage(
      name: _Paths.root,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.auth,
      page: () => const ChooseRoleView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.loginSiswa,
      page: () => const LoginSiswaView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.loginGuru,
      page: () => const LoginGuruView(),
      binding: AuthBinding(),
    ),
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
      name: _Paths.guruProfilPage,
      page: () => const GuruProfilepageView(),
      binding: GuruProfilepageBinding(),
    ),
    GetPage(
      name: _Paths.root,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.kuesionerSiswa,
      page: () => const KuesionerSiswaView(),
      binding: KuesionerBinding(),
    ),
    GetPage(
      name: _Paths.kuesionerGuru,
      page: () => const KuesionerGuruView(),
      binding: KuesionerBinding(),
    ),
  ];
}
