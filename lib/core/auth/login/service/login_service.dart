import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:my_talok/core/auth/login/models/sign_model/sign_model.dart';
import 'package:my_talok/core/auth/login/models/token_model/token_model.dart';
import 'package:my_talok/utlils/services/http_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  Future sign(username, password) async {
    Response response;
    final storage = new FlutterSecureStorage();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      response = await HttpService().postRequest(
          'api/v1/auth/login', {'credential': username, 'password': password});
      if (response.statusCode == 200) {
        var data = SignModel.fromJson(response.data);
        var token = TokenModel.fromJson(response.data);
        var _token = json.encode(token.data?.attributes?.accessToken);
        await storage.write(key: 'token', value: _token);
        prefs.setString('user', json.encode(data));
        return json.encode(data);
      }
      return response;
    } catch (e) {
      print(e);
      print("There is some problem status code not 200");
    }
  }
}
