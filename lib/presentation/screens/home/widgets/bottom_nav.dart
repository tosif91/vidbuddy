import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/image_const.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.selectedIdx});
  final RxInt selectedIdx;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(
              offset: Offset(2, -1), color: AppColors.lightGrey, blurRadius: 3)
        ]),
        height: 47.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: InkWell(
                    onTap: () {
                      selectedIdx.value = 0;
                    },
                    child: Container(
                        child: ImageConst.homeSelected.loadImage(
                            color: selectedIdx.value == 0
                                ? AppColors.cuddles
                                : AppColors.lightBlack)))),
            // Expanded(
            //     child: InkWell(
            //         onTap: () {
            //           selectedIdx.value = 1;
            //         },
            //         child: ImageConst.search.loadImage(
            //             color: selectedIdx.value == 1
            //                 ? AppColors.cuddles
            //                 : AppColors.lightBlack,
            //             height: 22,
            //             width: 22))),
            Expanded(
              child: InkWell(
                onTap: () {
                  selectedIdx.value = 2;
                },
                child: Icon(Icons.calendar_month,
                    size: 26,
                    color: selectedIdx.value == 2
                        ? AppColors.cuddles
                        : AppColors.lightBlack),
              ),
            ),
            Expanded(
                child: InkWell(
                    onTap: () {
                      selectedIdx.value = 3;
                    },
                    child: ImageConst.profile.loadImage(
                      color: selectedIdx.value == 3
                          ? AppColors.cuddles
                          : AppColors.lightBlack,
                      height: 26,
                      width: 26,
                    ))),
                    
          ],
        ),
      ),
    );
  }
}
