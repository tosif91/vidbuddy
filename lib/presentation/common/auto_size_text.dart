import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Always use AutoSizeText in place of Text to create the UI more responsive
class AutoSizeText extends StatelessWidget {
  AutoSizeText(this.text,
      {super.key,
      this.maxLines,
      this.style,
      this.align,
      this.scaleFactor,
      this.overflow,
      this.lineHeight,
      this.softWrap,
      this.fitToBox,
      this.fontSize});

  String text;
  double? lineHeight;
  int? maxLines;
  TextStyle? style;
  TextAlign? align;
  bool? softWrap;
  double? fontSize;
  double? scaleFactor;
  bool? fitToBox;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return (fitToBox ?? false)
        ? FittedBox(
            child: Text(
              text,
              textAlign: align,
              textScaleFactor: scaleFactor,
              overflow: overflow,
              maxLines: maxLines,
              softWrap: softWrap,
              style: style?.copyWith(
                  fontSize: style?.fontSize?.sp, height: lineHeight),
            ),
          )
        : Text(
            text,
            textAlign: align,
            textScaleFactor: scaleFactor,
            overflow: overflow,
            maxLines: maxLines,
            softWrap: softWrap,
            style: style?.copyWith(
                fontSize: style?.fontSize?.sp, height: lineHeight),
          );
  }
}
