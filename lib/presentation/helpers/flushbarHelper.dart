import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';

///Class used to show the different type of toast
class MessageBar {
  static success(
          {required String message,
          Toast duration = Toast.LENGTH_SHORT,
          ToastGravity gravity = ToastGravity.BOTTOM}) =>
      Fluttertoast.showToast(
          msg: message,
          toastLength: duration,
          gravity: gravity,
          backgroundColor: AppColors.coral.withOpacity(0.75),
          textColor: Colors.white,
          fontSize: 16.sp);
  static information(
          {required String message,
          Toast duration = Toast.LENGTH_SHORT,
          ToastGravity gravity = ToastGravity.BOTTOM}) =>
      Fluttertoast.showToast(
          msg: message,
          toastLength: duration,
          gravity: gravity,
          backgroundColor: AppColors.coral.withOpacity(0.9),
          textColor: Colors.white,
          fontSize: 16.sp);

  /// Get a error notification flushbar
  static error(
          {required String message,
          Toast duration = Toast.LENGTH_SHORT,
          ToastGravity gravity = ToastGravity.BOTTOM}) =>
      Fluttertoast.showToast(
          msg: message,
          toastLength: duration,
          gravity: gravity,
          backgroundColor: AppColors.electric.withOpacity(0.75),
          textColor: Colors.white,
          fontSize: 16.sp);
}
