import 'dart:convert';

import 'package:dio/dio.dart';
import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:opensid/utlils/helpers/models/handleerrormodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  var dio = Dio();
  final storage = new FlutterSecureStorage();

  HttpService() {
    dio.options
      ..connectTimeout = 20000 //20s
      ..receiveTimeout = 20000
      ..headers = {
        'Content-Type': 'application/json',
        'android': 'true',
      };

    initializeInterceptors();
  }

  Future getid() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
        print('is android');
        return androidDeviceInfo.androidId; // unique ID on Android
      } else if (Platform.isIOS) {
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        return iosDeviceInfo.identifierForVendor; // unique ID on iOS
      }
    } on PlatformException {
      return <String, dynamic>{'Error:': 'Failed to get platform version.'};
    }
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    final token = await this.storage.read(key: 'token');
    final prefs = await SharedPreferences.getInstance();

    final String baseUrl =
        prefs.getString('url') ?? 'http://103.142.224.34:800/api/public/';

    var idDevice = await getid();
    dio.options.headers["device"] = idDevice;
    dio.options.baseUrl = baseUrl;

    try {
      response = await dio.get(endPoint);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw Exception(errorMessage);
    }

    return response;
  }

  Future<Response> postRequest(String endPoint, Object data) async {
    Response response;
    final token = await this.storage.read(key: 'token');
    final prefs = await SharedPreferences.getInstance();

    final String baseUrl =
        prefs.getString('url') ?? 'http://103.142.224.34:800/api/public/';

    var idDevice = await getid();
    dio.options.headers["device"] = idDevice;
    dio.options.baseUrl = baseUrl;

    try {
      response = await dio.post(endPoint, data: data);
      print(response);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      print('ini pesan error');
      print(errorMessage);
      throw Exception(errorMessage);
    }

    return response;
  }

  initializeInterceptors() {
    dio.interceptors
      ..add(InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
      ))
      ..add(LogInterceptor(responseBody: false)); //Open log;
  }
}

class DioExceptions implements Exception {
  String message = 'Something went wrong';

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout with API server";
        break;

      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode,
            Handleerrormodel.fromJson(dioError.response!.data));
        print('pesan');
        print(message);
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleError(statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 404:
        return error["message"];
      case 500:
        return 'Internal server error';
      case 403:
        return error.messages;
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
