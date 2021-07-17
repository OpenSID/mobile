import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opensid/config/routes/route.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'myTalok',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.muliTextTheme(),
          backgroundColor: Colors.white,
        ),
        // debugShowCheckedModeBanner: false,
        home: MaterialApp.router(
            routeInformationParser: router.defaultRouteParser(),
            routerDelegate: router.delegate()));
  }
}
