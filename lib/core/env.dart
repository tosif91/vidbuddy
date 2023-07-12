import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:vidbuddy/core/services/local_storage_service.dart';

/// This Class encapsulate data, which is  related and required for the api calls , payment gateway and authentication
class Env {
  /// This url is unique url of mesky generate from www.otpless.in ,
  /// to integrate whatsapp authentication
  static const String whatsappIntentUrl =
      'https://mesky.authlink.me?redirectUri=otpless://mesky';

  /// Base url for the test server , in debug mode always use the test base URL
  static const _testBaseUrl = 'https://test.mesky.store/main/api/';

  /// Base url for the production server , in production mode use the production URL
  static const _releaseBaseUrl = 'https://mesky.in/main/api/';

  /// In Relase mode, use this key for succesfull razorpay payment
  static const String _razorPayLiveKey = "rzp_live_KY2bun0A8d2Ixw";

  /// In Debug mode, use this key , with this if payment is cancelled at some point then
  /// also it will reflect payment success and you can manage the flow
  static const String _razorPayTestKey = "rzp_test_sZ4R8zbTMErE7k";

  /// Global default cancel token pass to each api, if an explicit token is not pass to the api
  static CancelToken cancelToken = CancelToken();

  ///return suitable baseURL on behalf of release/test mode of application
  static getBaseUrl() {
    if (kReleaseMode) {
      return _releaseBaseUrl;
    } else {
      return _releaseBaseUrl; // _testBaseUrl;
    }
  }

  ///return valid razorpay api key on behalf of release/test mode of application
  static getRazorPayKey() {
    if (kReleaseMode) {
      return _razorPayLiveKey;
    } else {
      return _razorPayTestKey;
    }
  }

  ///This method is used to create the header with aut token for authenticate user.
  ///It is called in the custom dio interceptor, onRequest method to update the header before api call
  // static Map<String, String> generateHeader() {
  //   // String? token =
  //   //     getLocalStorageService().read(key: LocalStorageConstant.authToken);
  //   if (token != null) {
  //     log('auth token : $token');
  //     return {'Authorization': token};
  //   } else {
  //     return {};
  //   }
  // }
}
