import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/app_constants.dart';
import 'package:vidbuddy/extensions/extension.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/screens/chat/widgets/cust_chat_bubble.dart';
import 'package:vidbuddy/presentation/screens/chat/widgets/chat_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidbuddy/presentation/screens/chat/widgets/message_field.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: ChatHeader(),
          preferredSize: Size.fromHeight(50),
        ),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) =>
                CustChatBubble(isU: index % 2 == 0),
          )),
          const MessageField()
        ]),
      ),
    );
  }
}
