import 'package:auto_route/auto_route.dart';
import 'package:my_talok/core/auth/login/screen/login_screen.dart';
import 'package:my_talok/core/splashscreen/screen/splashscreen.dart';
import 'package:my_talok/modules/awal/screen/awal_screen.dart';
import 'package:my_talok/modules/home/screen/home_screen.dart';
// import 'package:my_talok/modules/berita/screen/berita_screen.dart';
// import 'package:my_talok/modules/xcore.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: SplashScreen, initial: true),
    AutoRoute(path: '/mulai', page: AwalScreen, name: 'mulai'),
    AutoRoute(path: '/login', page: LoginScreen),
    AutoRoute(path: '/home', page: HomeScreen, name: 'home'),
    // AutoRoute(page: HomeScreen),
    // AutoRoute(page: MandiriScreen),
    // AutoRoute(page: BeritaScreen)
  ],
)
class $AppRouter {}
