import 'package:get/get.dart';
import 'package:vidbuddy/presentation/screens/calender/calender_controller.dart';
import 'package:vidbuddy/presentation/screens/calender/calender_screen.dart';
import 'package:vidbuddy/presentation/screens/chat/chat_controller.dart';
import 'package:vidbuddy/presentation/screens/chat/chat_screen.dart';
import 'package:vidbuddy/presentation/screens/home/home_screen.dart';
import 'package:vidbuddy/presentation/screens/meet/meet_controller.dart';
import 'package:vidbuddy/presentation/screens/meet/meet_screen.dart';
import 'package:vidbuddy/presentation/screens/notification/notification_controller.dart';
import 'package:vidbuddy/presentation/screens/notification/notification_screen.dart';
import 'package:vidbuddy/presentation/screens/profile/profile_controller.dart';
import 'package:vidbuddy/presentation/screens/profile/profile_screen.dart';
import 'package:vidbuddy/presentation/screens/schedule/schedule_controller.dart';
import 'package:vidbuddy/presentation/screens/schedule/schedule_screen.dart';
import 'package:vidbuddy/presentation/screens/signin/signin_controller.dart';
import 'package:vidbuddy/presentation/screens/signin/signin_screen.dart';
import 'package:vidbuddy/presentation/screens/splash/splash_controller.dart';
import 'package:vidbuddy/presentation/screens/splash/splash_screen.dart';

class PageRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String signin = '/signin';
  static const String notification = '/notification';
  static const String meet = '/meet';
  static const String profile = '/profile';
  static const String calendar = '/calendar';
  static const String chat = '/chat';
  static const String schedule = '/schedule';
  static getPages() => [
        GetPage(
          name: splash,
          page: () => const SplashScreen(),
          binding: BindingsBuilder(() {
            Get.put(
              SplashController(),
            );
          }),
        ),
        GetPage(
          name: home,
          page: () => HomeScreen(),
          binding: BindingsBuilder(
            () {},
          ),
        ),
        GetPage(
          name: signin,
          page: () => const SignInScreen(),
          binding: BindingsBuilder(
            () {
              Get.put(SignInController());
            },
          ),
        ),
        GetPage(
          name: calendar,
          page: () => const CalenderScreen(),
          binding: BindingsBuilder(
            () {
              CalenderController();
            },
          ),
        ),
        GetPage(
          name: profile,
          page: () => const ProfileScreen(),
          binding: BindingsBuilder(
            () {
              ProfileController();
            },
          ),
        ),
        GetPage(
          name: notification,
          page: () => const NotificationScreen(),
          binding: BindingsBuilder(
            () {
              NotificationController();
            },
          ),
        ),
        GetPage(
          name: meet,
          page: () => const MeetScreen(),
          binding: BindingsBuilder(
            () {
              MeetController();
            },
          ),
        ),
        GetPage(
          name: calendar,
          page: () => const CalenderScreen(),
          binding: BindingsBuilder(
            () {
              CalenderController();
            },
          ),
        ),
        GetPage(
          name: schedule,
          page: () => const ScheduleScreen(),
          binding: BindingsBuilder(
            () {
              ScheduleController();
            },
          ),
        ),
        GetPage(
          name: chat,
          page: () => const ChatScreen(),
          binding: BindingsBuilder(
            () {
              ChatController();
            },
          ),
        ),
      ];
}
