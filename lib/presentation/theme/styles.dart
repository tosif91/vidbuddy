import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TxtStyles {
  static TextStyle fredoka(
          {double? size,
          FontWeight? fontWeight,
          double? letterSpacing,
          Color? color,
          double? height}) =>
      GoogleFonts.fredoka(
          textStyle: TextStyle(
              color: color,
              fontSize: size?.sp,
              letterSpacing: letterSpacing,
              height: height,
              fontWeight: fontWeight));

  static TextStyle fredokaOne(
          {double? size,
          FontWeight? fontWeight,
          double? letterSpacing,
          Color? color,
          double? height}) =>
      GoogleFonts.fredokaOne(
          textStyle: TextStyle(
              color: color,
              fontSize: size?.sp,
              letterSpacing: letterSpacing,
              height: height,
              fontWeight: fontWeight));

  static TextStyle openSans(
          {double? size,
          FontWeight? fontWeight,
          double? letterSpacing,
          Color? color,
          double? height}) =>
      GoogleFonts.openSans(
          textStyle: TextStyle(
              color: color,
              fontSize: size?.sp,
              letterSpacing: letterSpacing,
              height: height,
              fontWeight: fontWeight));

  static TextStyle nunito(
          {double? size,
          FontWeight? fontWeight,
          double? letterSpacing,
          Color? color,
          double? height}) =>
      GoogleFonts.nunito(
          textStyle: TextStyle(
              color: color,
              fontSize: size?.sp,
              letterSpacing: letterSpacing,
              height: height,
              fontWeight: fontWeight));

  static TextStyle amsterdam(
          {double? size,
          FontWeight? fontWeight,
          double? letterSpacing,
          Color? color,
          double? height}) =>
      GoogleFonts.amarante(
          textStyle: TextStyle(
              color: color,
              fontSize: size?.sp,
              letterSpacing: letterSpacing,
              height: height,
              fontWeight: fontWeight));
}

extension TxtStylExt on TextStyle {
  set size(double size) => copyWith(fontSize: size.sp);
}
