import 'package:flutter/material.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';

class CustGradients {
  static final greyShadeProductItems = LinearGradient(
    colors: [AppColors.background, AppColors.background.withOpacity(0.3)],
    begin: FractionalOffset.topCenter,
    end: FractionalOffset.bottomCenter,
  );

  static final whiteShadeProductItems = LinearGradient(
    colors: [AppColors.white, AppColors.background.withOpacity(0.3)],
    begin: FractionalOffset.topCenter,
    end: FractionalOffset.bottomCenter,
  );
}
