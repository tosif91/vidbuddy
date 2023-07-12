import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/app_constants.dart';
import 'package:vidbuddy/core/image_const.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/common/rounded_button.dart';
import 'package:vidbuddy/presentation/screens/signin/signin_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.cuddles,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(),
              Hero(
                tag: 'title',
                child: AutoSizeText(
                  'VidBuddy',
                  style: TxtStyles.fredoka(
                    size: 24,
                    color: AppColors.white,
                  ),
                ),
              ),
              AutoSizeText(
                'Group \nMeeting App',
                align: TextAlign.center,
                style: TxtStyles.fredoka(
                  size: 27,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
              RoundedButton(
                onPressed: () {},
                color: AppColors.electric,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ImageConst.google.loadImage(height: 30, width: 30),
                  10.0.widthSizedBox,
                  AutoSizeText(
                    'Sign in with Google',
                    style: TxtStyles.fredoka(color: AppColors.white, size: 20),
                  )
                ]).paddingSymmetric(horizontal: 10, vertical: 10),
              ),
              AutoSizeText(
                AppConstants.siginInDesc,
                align: TextAlign.center,
                style: TxtStyles.nunito(
                    color: AppColors.white,
                    size: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(),
            ]).paddingSymmetric(horizontal: 10.w),
      ),
    );
  }
}
