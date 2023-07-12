import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/screens/splash/splash_controller.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cuddles,
      body: Center(
        child: Hero(
          tag: 'title',
          child: AutoSizeText(
            'VidBuddy',
            style: TxtStyles.fredokaOne(
              size: 35,
              // letterSpacing: 1.1,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
