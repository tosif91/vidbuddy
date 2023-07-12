import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class CompTextFormField extends StatelessWidget {
  const CompTextFormField(
      {super.key,
      required this.controller,
      required this.label,
      this.inputType,
      this.formatter,
      this.prefix,
      this.onChange,
      this.maxlength,
      this.counterTxt,
      this.action,
      required this.validation});
  final String label;
  final TextInputAction? action;
  final int? maxlength;
  final String? counterTxt;
  final TextInputType? inputType;
  final Function(String? val) validation;
  final Function(String? val)? onChange;
  final Widget? prefix;
  final TextEditingController controller;
  final List<TextInputFormatter>? formatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          label,
          style: TxtStyles.nunito(
            size: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.lightTextGrey,
          ),
        ),
        7.0.heightSizedBox,
        TextFormField(
          textInputAction: action,
          cursorColor: AppColors.tagBlue,
          controller: controller,
          maxLength: maxlength,
          keyboardType: inputType,
          onChanged: onChange,
          inputFormatters: formatter,
          validator: (val) => validation(val),
          decoration: InputDecoration(
              prefix: prefix,
              counterText: counterTxt,
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.tagBlue),
                  borderRadius: BorderRadius.circular(15.r)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.tagBlue),
                  borderRadius: BorderRadius.circular(15.r))),
        )
      ],
    );
  }
}
