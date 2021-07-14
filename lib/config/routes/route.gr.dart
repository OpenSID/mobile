// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../core/auth/login/screen/login_screen.dart' as _i5;
import '../../core/splashscreen/screen/splashscreen.dart' as _i3;
import '../../modules/awal/screen/awal_screen.dart' as _i4;
import '../../modules/home/screen/home_screen.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    Mulai.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AwalScreen();
        }),
    LoginScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.LoginScreen();
        }),
    Home.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.HomeScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreen.name, path: '/'),
        _i1.RouteConfig(Mulai.name, path: '/mulai'),
        _i1.RouteConfig(LoginScreen.name, path: '/login'),
        _i1.RouteConfig(Home.name, path: '/home')
      ];
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}

class Mulai extends _i1.PageRouteInfo {
  const Mulai() : super(name, path: '/mulai');

  static const String name = 'Mulai';
}

class LoginScreen extends _i1.PageRouteInfo {
  const LoginScreen() : super(name, path: '/login');

  static const String name = 'LoginScreen';
}

class Home extends _i1.PageRouteInfo {
  const Home() : super(name, path: '/home');

  static const String name = 'Home';
}
