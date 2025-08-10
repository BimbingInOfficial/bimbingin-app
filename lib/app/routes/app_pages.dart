import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/choose_role_view.dart';
import '../modules/auth/views/login_guru_view.dart';
import '../modules/auth/views/login_siswa_view.dart';
import '../modules/guru_chatbot/bindings/guru_chatbot_binding.dart';
import '../modules/guru_chatbot/views/guru_chatbot_view.dart';
import '../modules/guru_detail_rekomendasi/bindings/guru_detail_rekomendasi_binding.dart';
import '../modules/guru_detail_rekomendasi/views/guru_detail_rekomendasi_view.dart';
import '../modules/guru_homepage/bindings/guru_homepage_binding.dart';
import '../modules/guru_homepage/views/guru_homepage_view.dart';
import '../modules/guru_profilepage/bindings/guru_profilepage_binding.dart';
import '../modules/guru_profilepage/views/guru_profilepage_view.dart';
import '../modules/guru_ruang_belajar_detail/bindings/guru_ruang_belajar_detail_binding.dart';
import '../modules/guru_ruang_belajar_detail/views/guru_ruang_belajar_detail_view.dart';
import '../modules/guru_ruangbelajar/bindings/guru_ruangbelajar_binding.dart';
import '../modules/guru_ruangbelajar/views/guru_ruangbelajar_view.dart';
import '../modules/kuesioner/bindings/kuesioner_binding.dart';
import '../modules/kuesioner/views/kuesioner_guru_view.dart';
import '../modules/kuesioner/views/kuesioner_siswa_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';
import '../modules/siswa_homepage/bindings/siswa_homepage_binding.dart';
import '../modules/siswa_homepage/views/siswa_homepage_view.dart';
import '../modules/siswa_personal_asisten/bindings/siswa_personal_asisten_binding.dart';
import '../modules/siswa_personal_asisten/views/siswa_personal_asisten_view.dart';
import '../modules/siswa_profilepage/bindings/siswa_profilepage_binding.dart';
import '../modules/siswa_profilepage/views/siswa_profilepage_view.dart';
import '../modules/siswa_ruangbelajar/bindings/siswa_ruangbelajar_binding.dart';
import '../modules/siswa_ruangbelajar/views/siswa_ruangbelajar_view.dart';

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
      name: _Paths.kuesionerSiswa,
      page: () => const KuesionerSiswaView(),
      binding: KuesionerBinding(),
    ),
    GetPage(
      name: _Paths.kuesionerGuru,
      page: () => const KuesionerGuruView(),
      binding: KuesionerBinding(),
    ),
    GetPage(
      name: _Paths.siswaHomepage,
      page: () => const SiswaHomepageView(),
      binding: SiswaHomepageBinding(),
    ),
    GetPage(
      name: _Paths.siswaRuangBelajar,
      page: () => const SiswaRuangbelajarView(),
      binding: SiswaRuangbelajarBinding(),
    ),
    GetPage(
      name: _Paths.siswaPersonalAsisten,
      page: () => const SiswaPersonalAsistenView(),
      binding: SiswaPersonalAsistenBinding(),
    ),
    GetPage(
      name: _Paths.siswaProfilepage,
      page: () => const SiswaProfilepageView(),
      binding: SiswaProfilepageBinding(),
    ),
    GetPage(
      name: _Paths.guruRuangBelajarDetail,
      page: () => const GuruRuangBelajarDetailView(),
      binding: GuruRuangBelajarDetailBinding(),
    ),
    GetPage(
      name: _Paths.guruDetailRekomendasi,
      page: () => const GuruDetailRekomendasiView(),
      binding: GuruDetailRekomendasiBinding(),
    ),
  ];
}
