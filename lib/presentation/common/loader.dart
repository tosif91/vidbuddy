import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';

class CircularLoader extends StatelessWidget {
  CircularLoader({super.key, this.color, this.size, this.alignCenter = true});
  Color? color;
  double? size;
  bool alignCenter;
  @override
  Widget build(BuildContext context) {
    return (alignCenter)
        ? Center(
            child: SizedBox(
            height: size?.r,
            width: size?.r,
            child: CircularProgressIndicator(
              color: color ?? AppColors.satYellow,
            ),
          ))
        : SizedBox(
            height: size?.r,
            width: size?.r,
            child: CircularProgressIndicator(
              color: color ?? AppColors.satYellow,
            ));
  }
}
