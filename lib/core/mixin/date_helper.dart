import 'package:intl/intl.dart';

mixin DateHelper {
  ///Return the time in a format the message is required
  String getTimeDifferenceFromNow(String dateTime) {
    DateTime tempDate = DateFormat("dd-MM-yyyy hh:mm").parse(dateTime, true);
    Duration difference = DateTime.now().difference(tempDate.toLocal());
    if (difference.inSeconds < 5) {
      return "just now";
    } else if (difference.inMinutes < 1) {
      return "${difference.inSeconds}s";
    } else if (difference.inHours < 1) {
      return "${difference.inMinutes}m";
    } else if (difference.inHours < 24) {
      return "${difference.inHours}h";
    } else {
      return "${difference.inDays}d";
    }
  }
}
