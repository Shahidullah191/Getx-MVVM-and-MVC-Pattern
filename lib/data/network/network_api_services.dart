import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:getx_mvvm_and_mvc/data/app_exceptions.dart';
import 'package:getx_mvvm_and_mvc/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print('url: $url');
    }

    final dio = Dio();

    dynamic responseJson;

    try {
      final response = await dio.get(url).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOutException {
      throw RequestTimeOutException('');
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(String url, dynamic data) async {
    if (kDebugMode) {
      print('url: $url');
      print('data: $data');
    }

    final dio = Dio();

    dynamic responseJson;

    try {
      final response =
          await dio.post(url, data: data).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOutException {
      throw RequestTimeOutException('');
    }
    return responseJson;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        return responseJson;
      case 400:
        throw InvalidUrlException;
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
