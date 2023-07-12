import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/app_constants.dart';
import 'package:vidbuddy/core/image_const.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class AddFriendCard extends StatelessWidget {
  const AddFriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AppConstants.mockProfileImage
                .loadNetworkImage(height: 70, width: 70)),
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
                style: TxtStyles.fredoka(size: 15, color: AppColors.lightGrey),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.add,
            color: AppColors.electric,
          ).paddingAll(5.0),
        )
      ],
    );
  }
}
