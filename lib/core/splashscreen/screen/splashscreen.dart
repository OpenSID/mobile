import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:opensid/core/splashscreen/service/splash_screen.dart';
import 'package:opensid/utlils/services/geo_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  _SplashScreen();
  void initState() {
    super.initState();

    startSplashScreen();
  }

  startSplashScreen() async {
    Future.delayed(Duration(seconds: 2), () async {
      final prefs = await SharedPreferences.getInstance();
      //cek apakah sudah ada variable url untuk layanan;;
      final bool url = prefs.containsKey('url');

      if (url) {
        try {
          final auth = await SplashscreenService().auth();

          if (auth == null) {
            context.replaceRoute(PageRouteInfo('LoginScreen', path: '/login'));
          } else {
            // context.replaceRoute(PageRouteInfo('HomeScreen', path: '/home'));
          }
        } catch (e) {
          context.replaceRoute(PageRouteInfo('LoginScreen', path: '/login'));
          // context.replaceRoute(PageRouteInfo('AwalScreen', path: '/mulai'));
        }
      } else {
        print('belum setting url');
        // ambil lokasi gps
        final _lokasi = await GeoService().determinePosition();
        print(_lokasi);
        // untuk menghindari pengaturan awal. redirect langsung ke login
        // context.replaceRoute(PageRouteInfo('LoginScreen', path: '/login'));

        // ke pengaturan awal
        context.replaceRoute(PageRouteInfo('AwalScreen', path: '/mulai'));
      }
    });

    // final GlobalKey<NavigatorState> navigatorKey;
    // await Get.toNamed('/login');
    // try {
    //   var cek = await SplashscreenService().cek();
    //   // Navigator.pushReplacementNamed(context, '/login');
    //   // Navigator.defaultGenerateInitialRoutes(navigator, initialRouteName)

    //   print(cek);
    // } catch (e) {
    //   print(Navigator);

    //   // await navigatorKey.currentState.pushReplacement('login');
    //   // navigatorKey.currentState.pushNamed('/someRoute');

    //   // navigatorKey.currentState!.pushNamed("HomeScreen");

    //   Navigator.of(context).pop("HomeScreen");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sipandu ',
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/png/logo_app.png')),
                SizedBox(height: 24.0),
                Text(
                  "OPENSID MOBILE",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ));
  }
}
