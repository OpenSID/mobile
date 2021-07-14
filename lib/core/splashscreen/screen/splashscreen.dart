import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_talok/core/splashscreen/service/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  // _SplashScreen(this.navigatorKey);

  void initState() {
    super.initState();

    startSplashScreen();
  }

  startSplashScreen() async {
    Future.delayed(Duration(seconds: 2), () async {
      final prefs = await SharedPreferences.getInstance();
      //cek apakah sudah ada variable url untuk layanan;;
      final bool url = prefs.containsKey('url');
      print('url');
      print(url);
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
        }
      } else {
        print('masuk false');
        context.replaceRoute(PageRouteInfo('LoginScreen', path: '/login'));
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
