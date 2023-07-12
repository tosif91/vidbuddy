import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/app_constants.dart';
import 'package:vidbuddy/core/image_const.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/common/rounded_button.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        elevation: 0.5,
        title: AutoSizeText(
          'Profile',
          align: TextAlign.center,
          style: TxtStyles.fredoka(size: 20, color: AppColors.lightBlack),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 3,
          // height: Get.height * 0.5,
          // width: Get.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              AppConstants.mockProfileImage.loadNetworkImage(fit: BoxFit.fill),
              Positioned(
                bottom: 20.h,
                left: 10.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Anable Raman',
                      style:
                          TxtStyles.fredoka(color: AppColors.white, size: 34),
                    ),
                    AutoSizeText(
                      'anable@gmail.com',
                      style: TxtStyles.fredoka(
                          color: AppColors.white.withOpacity(0.6), size: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _ProfileBtn(title: 'Search Friend', onPressed: () {}),
              _ProfileBtn(title: 'Meeting History', onPressed: () {}),
              _ProfileBtn(title: 'Settings', onPressed: () {}),
              RoundedButton(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                color: AppColors.cuddles,
                onPressed: () {},
                child: AutoSizeText(
                  'Sign Out',
                  align: TextAlign.center,
                  style: TxtStyles.fredoka(color: AppColors.white, size: 20),
                ).paddingSymmetric(vertical: 10.h),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}

class _ProfileBtn extends StatelessWidget {
  const _ProfileBtn({super.key, required this.title, required this.onPressed});
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AutoSizeText(
            title,
            style: TxtStyles.fredoka(size: 24),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 25,
        )
      ],
    ).paddingSymmetric(horizontal: 10.w, vertical: 10.h);
  }
}
