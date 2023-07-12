import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/image_const.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/common/comp_textform_field.dart';
import 'package:vidbuddy/presentation/common/rounded_button.dart';
import 'package:vidbuddy/presentation/screens/home/widgets/friend_card.dart';
import 'package:vidbuddy/presentation/screens/schedule/widget/add_friend_card.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        elevation: 0.5,
        title: AutoSizeText(
          'Schedule Meeting',
          align: TextAlign.center,
          style: TxtStyles.fredoka(size: 20, color: AppColors.lightBlack),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CompTextFormField(
            controller: TextEditingController(),
            label: 'Meeting Title',
            action: TextInputAction.next,
            validation: (v) {}),
        CompTextFormField(
            controller: TextEditingController(),
            label: 'Meeting Description',
            action: TextInputAction.done,
            validation: (v) {}),
        TextField(
          onTap: () {
            showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2024))
                .then((date) {
              showTimePicker(context: context, initialTime: TimeOfDay.now())
                  .then((time) {});
            });
          },
          readOnly: true,
          decoration: InputDecoration(
              hintText: 'Pick a Date',
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.tagBlue),
                  borderRadius: BorderRadius.circular(15.r)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.tagBlue),
                  borderRadius: BorderRadius.circular(15.r))),
        ).paddingSymmetric(vertical: 12.h),
        AutoSizeText(
          'Invite Friends',
          style: TxtStyles.fredoka(
            size: 20,
          ),
        ),
        10.0.heightSizedBox,
        Expanded(
            child: ListView.separated(
          separatorBuilder: (c, i) => const Divider(),
          itemBuilder: (context, index) => const AddFriendCard(),
          itemCount: 10,
        )),
        RoundedButton(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          onPressed: () {},
          color: AppColors.cuddles,
          child: AutoSizeText(
            'Create Meeting',
            align: TextAlign.center,
            style: TxtStyles.fredoka(color: AppColors.white, size: 16),
          ).paddingSymmetric(
            vertical: 10.h,
          ),
        )
      ]).paddingSymmetric(horizontal: 10.w),
    );
  }
}
