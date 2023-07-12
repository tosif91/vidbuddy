import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/screens/home/widgets/friend_card.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AutoSizeText(
        'Find your contacts',
        style: TxtStyles.fredoka(
          size: 18,
        ),
      ).paddingSymmetric(vertical: 15.h),
      Expanded(
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const Divider(
                    height: 0,
                  ),
              itemCount: 10,
              itemBuilder: (context, index) => FriendCard()))
    ]).paddingSymmetric(horizontal: 10.w);
  }
}
