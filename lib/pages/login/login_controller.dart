import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core.dart';

class LoginController extends GetxController {
  TextEditingController nikController;
  TextEditingController pinController;

  LoginController();

  @override
  void onInit() {
    cekLogin();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  int which = 0;

  void checktext(String text) {
    if (text.isNum) {
      // ignore: unnecessary_brace_in_string_interps
      // print("${text} is a number");
      var credential = text;
      print(credential);
      which = 1;
    } else if (text.isEmail) {
      // ignore: unnecessary_brace_in_string_interps
      print("${text} is Email");
      which = 2;
    } else if (text.isEmpty) {
      which = 0;
    }

    update();
  }

  Future cekLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String _token = pref.getString('token');
    if (_token != null) {
      Get.offAllNamed(Routes.HOME);
    }
    print(_token);
  }

  Future login(String credential, String password, {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }
    if (which == 1) {
      //auth

      print("Run a method from phone NIK signIn");
      String url = 'https://api.desatalok.com/public/api/v1/auth/login';
      var response = await client.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            'credential': credential,
            'password': password
          }));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        var token = data['data']['attributes']['access_token']['token'];
        Penduduk penduduk = Penduduk.fromJson(data);
        //cek token
        print(token);
        //simpan local login
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString('token', token);
        pref.setString('nik', data['data']['attributes']['nik']);

        Get.offAllNamed(Routes.HOME);
        return penduduk;
        // return ApiReturn(value: value);
      } else {
        print('error');
      }
    } else if (which == 2) {
      print("Run a method from email signIn");
      //auth
    } else {
      Get.snackbar("Error", "Masukkan NIK / Email & PIN dengan benar");
    }
  }
}
