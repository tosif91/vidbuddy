import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class CustChatBubble extends StatelessWidget {
  const CustChatBubble({
    super.key,
    required this.isU,
  });

  final bool isU;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper10(
          type: isU ? BubbleType.sendBubble : BubbleType.receiverBubble),
      alignment: isU ? Alignment.topRight : Alignment.topLeft,
      margin: EdgeInsets.only(top: 20),
      backGroundColor: AppColors.electric.withOpacity(0.8),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TxtStyles.fredoka(color: AppColors.white, size: 14),
            ),
            AutoSizeText(
              '6:45 PM',
              style: TxtStyles.fredoka(color: AppColors.cuddles),
            ).paddingOnly(top: 3.0)
          ],
        ),
      ),
    );
  }
}
