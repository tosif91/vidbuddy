import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          _DateCT(),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                  color: AppColors.cuddles,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Meeting Title Here',
                      style:
                          TxtStyles.fredoka(color: AppColors.white, size: 18),
                    ),
                    AutoSizeText(
                      'Meeting Description will be here , which shows what the meeting is about ',
                      style:
                          TxtStyles.fredoka(color: AppColors.white, size: 14),
                    )
                  ]),
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 5.w),
    );
  }
}

class _DateCT extends StatelessWidget {
  const _DateCT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.r),
          decoration: const BoxDecoration(
            color: AppColors.electric,
            shape: BoxShape.circle,
          ),
          child: AutoSizeText(
            '12',
            style: TxtStyles.fredoka(
              size: 20,
              color: AppColors.white,
            ),
          ),
        ),
        AutoSizeText(
          'Monday',
          style: TxtStyles.fredoka(),
        )
      ],
    );
  }
}
