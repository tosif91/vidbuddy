import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeetScreen extends StatelessWidget {
  const MeetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    color: AppColors.coral,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    color: AppColors.cuddles,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10.r),
                decoration: const BoxDecoration(
                    color: AppColors.lightGrey, shape: BoxShape.circle),
                child: const Icon(
                  Icons.videocam_sharp,
                  color: AppColors.white,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.cuddles, shape: BoxShape.circle),
                padding: EdgeInsets.all(15.r),
                child: Icon(
                  Icons.call_end_outlined,
                  size: 30.r,
                  color: AppColors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.r),
                decoration: const BoxDecoration(
                    color: AppColors.lightGrey, shape: BoxShape.circle),
                child: const Icon(
                  Icons.mic,
                  color: AppColors.white,
                ),
              )
            ],
          ).paddingSymmetric(vertical: 15.h)
        ]),
      ),
    );
  }
}
