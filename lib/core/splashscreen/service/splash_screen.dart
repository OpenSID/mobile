import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dio/dio.dart';

class SplashscreenService {
  Future<dynamic> auth() async {
    Response response;

    try {
      final storage = new FlutterSecureStorage();
      final token = json.encode(await storage.read(key: 'token'));
      return token;
      print(json.decode(token));
    } catch (_) {
      return _;
    }
  }
}
