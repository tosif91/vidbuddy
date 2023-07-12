import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  static final GeneralController _singleton = GeneralController._internal();

  factory GeneralController() {
    return _singleton;
  }
  GeneralController._internal();
}
