import 'dart:io';

///auth call are converted into Failure objecgt containing all information to show / or perform
///actions according to the given information
class Failure {
  String message;
  bool isOnline;
  Failure({
    required this.message,
    required this.isOnline,
  });

  factory Failure.generate(Exception e) {
    if (e is SocketException) {
      return Failure(
        message: 'MsgConstants.errorNoInternet',
        isOnline: false,
      );
    }
    return Failure(
      message: e.toString(),
      isOnline: true,
    );
  }
}
