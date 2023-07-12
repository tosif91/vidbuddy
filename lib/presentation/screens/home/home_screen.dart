import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/common/rounded_button.dart';
import 'package:vidbuddy/presentation/screens/home/home_page.dart';
import 'package:vidbuddy/presentation/screens/home/widgets/bottom_nav.dart';
import 'package:vidbuddy/presentation/screens/home/widgets/friend_card.dart';
import 'package:vidbuddy/presentation/screens/profile/profile_screen.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final RxInt selectedIdx = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
            backgroundColor: AppColors.white,
            // appBar: AppBar(
            //   backgroundColor: AppColors.white,
            //   centerTitle: true,
            //   elevation: 0.5,
            //   title: AutoSizeText(
            //     'Home',
            //     align: TextAlign.center,
            //     style: TxtStyles.fredoka(size: 20, color: AppColors.lightBlack),
            //   ),
            // ),
            body: _getScreen(selectedIdx.value),
            bottomNavigationBar: BottomNav(
              selectedIdx: selectedIdx,
            )),
      ),
    );
  }
}

Widget _getScreen(int idx) {
  switch (idx) {
    case 0:
    case 1:
    case 2:
      return HomePage();
    case 3:
      return ProfileScreen();
    default:
      return HomePage();
  }
}
