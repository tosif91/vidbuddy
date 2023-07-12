import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/app_constants.dart';
import 'package:vidbuddy/core/image_const.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/page_routes.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      elevation: 2.0,
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_new)
                  .paddingSymmetric(horizontal: 3.w)),
          ClipRRect(
                  borderRadius: BorderRadius.circular(400),
                  child: AppConstants.mockProfileImage.loadNetworkImage())
              .paddingOnly(right: 10.w),
          Expanded(
            child: AutoSizeText(
              'Asad Mirza',
              style: TxtStyles.fredoka(size: 20),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(PageRoutes.meet);
            },
            child: Icon(
              Icons.videocam_rounded,
              size: 30,
              color: AppColors.cuddles,
            ).paddingSymmetric(horizontal: 10.w),
          ),
        ],
      ).paddingSymmetric(vertical: 5.0),
    );
  }
}
