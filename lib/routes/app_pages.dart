import 'package:get/get.dart';
import '../core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.BERITA,
      page: () => BeritaView(),
    ),
    GetPage(
      name: Routes.AKUN,
      page: () => MandiriView(),
      binding: MandiriBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: MandiriBinding(),
    ),
  ];
}
