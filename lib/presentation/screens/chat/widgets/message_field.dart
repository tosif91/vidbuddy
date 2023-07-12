import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(3, -2), color: AppColors.lightGrey, blurRadius: 3)
      ], color: AppColors.white),
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
            height: 49.h,
            child: TextFormField(
              cursorColor: AppColors.cuddles,
              style: TextStyle(height: 1),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: 'Type here...',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r))),
            ).paddingSymmetric(horizontal: 5.w),
          )),
          const Icon(
            Icons.send,
            size: 26,
            color: AppColors.cuddles,
          ).paddingSymmetric(horizontal: 5.w)
        ],
      ),
    );
  }
}
