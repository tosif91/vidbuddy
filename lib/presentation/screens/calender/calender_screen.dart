import 'package:flutter/material.dart';
import 'package:vidbuddy/presentation/common/auto_size_text.dart';
import 'package:vidbuddy/presentation/screens/calender/widgets/event_card.dart';
import 'package:vidbuddy/presentation/theme/app_colors.dart';
import 'package:vidbuddy/presentation/theme/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        elevation: 0.5,
        title: AutoSizeText(
          'Calender',
          align: TextAlign.center,
          style: TxtStyles.fredoka(size: 20, color: AppColors.lightBlack),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => const EventCard(),
                separatorBuilder: (context, index) => Divider(),
                itemCount: 10),
          )
        ],
      ),
    ));
  }
}
