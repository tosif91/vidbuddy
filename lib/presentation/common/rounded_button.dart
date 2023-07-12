import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    super.key,
    this.radius = 24,
    this.color,
    this.shadowColor,
    this.margin,
    required this.child,
    required this.onPressed,
  });
  final double radius;
  Widget child;
  Function() onPressed;
  EdgeInsets? margin;
  Color? color, shadowColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: margin,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: const Offset(2, 3),
                  blurRadius: 3.0,
                  spreadRadius: 1,
                  color: shadowColor ?? AppColors.lightBlack.withOpacity(0.3))
            ],
            borderRadius: BorderRadius.circular(
              radius.r,
            ),
            color: color),
        child: child,
      ),
    );
  }
}
