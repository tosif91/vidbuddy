import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/app_constants.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/page_routes.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(PageRoutes.chat);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AppConstants.mockProfileImage
                  .loadNetworkImage(height: 55, width: 55)),
          10.0.widthSizedBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Anable Raman',
                  style: TxtStyles.fredoka(size: 20),
                ),
                AutoSizeText(
                  'anable@gmail.com',
                  style:
                      TxtStyles.fredoka(size: 15, color: AppColors.lightGrey),
                ),
                // Row(
                //   children: [
                //     _ActionBtn(icon: Icons.videocam_rounded, onPressed: () {}),
                //     _ActionBtn(
                //         icon: Icons.call,
                //         onPressed: () {
                //           MessageBar.information(
                //               message:
                //                   "Coming Soon, you can video call right now");
                //         }),
                //     _ActionBtn(
                //         icon: Icons.chat,
                //         onPressed: () {
                //           MessageBar.information(
                //               message:
                //                   "Coming Soon, you can video call right now");
                //         }),
                //   ],
                // ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.blue,
            ),
            height: 25,
            alignment: Alignment.center,
            width: 25,
            child: AutoSizeText(
              '10',
              fitToBox: true,
              align: TextAlign.center,
              style: TxtStyles.fredoka(size: 20, color: AppColors.white),
            ),
          )
          // AutoSizeText(
          //   'UnFriend',
          //   style: TxtStyles.fredoka(
          //       color: AppColors.electric, fontWeight: FontWeight.w500),
          // )
        ],
      ).paddingSymmetric(vertical: 5.0),
    );
  }
}

class _ActionBtn extends StatelessWidget {
  const _ActionBtn(
      {super.key, required this.icon, required this.onPressed, this.size = 23});
  final IconData icon;
  final double size;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightTextGrey.withOpacity(0.3)),
        child: Icon(
          icon,
          color: AppColors.cuddles,
          size: size,
        ),
      ),
    );
  }
}
