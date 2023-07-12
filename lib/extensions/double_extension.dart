part of 'extension.dart';

extension WidgetExtension on double {
  Widget get widthSizedBox => SizedBox(width: this.w);
  Widget get heightSizedBox => SizedBox(height: this.h);
}
