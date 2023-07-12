import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:vidbuddy/core/services/local_storage_service.dart';
import 'package:vidbuddy/locator.dart';
import 'package:vidbuddy/page_routes.dart';

void main() async {
  setUpLocator();
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  await getLocalStorageService().init(dir.path);
  await Hive.initFlutter(dir.path);
  // if (!Hive.isAdapterRegistered(0)) {
  //   Hive.registerAdapter(CartModelAdapter());
  // }
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  // await Firebase.initializeApp();
  // // Pass all uncaught "fatal" errors from the framework to Crashlytics
  // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(
    KeyboardVisibilityBuilder(
      // this builder will sense keyboard state whenever keyboard hided it will remove focus from textfield
      builder: (context, isKeyBoardVisible) {
        if (!isKeyBoardVisible) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
        return ScreenUtilInit(
            //screen util is required to make the ui perfect according to device screen size
            designSize: const Size(390, 800),
            // useInheritedMediaQuery: true,
            builder: (context, w) => const MyApp());
      },
    ),
  );
  // final configuration = DdSdkConfiguration(
  //   clientToken: 'pubae4f983558b659b13f34817b954323cf',
  //   env: 'Prod',
  //   site: DatadogSite.us5,
  //   trackingConsent: TrackingConsent.granted,
  //   nativeCrashReportEnabled: true,
  //   loggingConfiguration: LoggingConfiguration(),
  //   rumConfiguration:
  //       RumConfiguration(applicationId: '76872ef0-2ee9-451b-aad0-1795d6e27cf5'),
  // );
  // await DatadogSdk.runApp(configuration, () async {
  //   runApp(
  //     KeyboardVisibilityBuilder(
  //       // this builder will sense keyboard state whenever keyboard hided it will remove focus from textfield
  //       builder: (context, isKeyBoardVisible) {
  //         if (!isKeyBoardVisible) {
  //           FocusScope.of(context).requestFocus(FocusNode());
  //         }
  //         return ScreenUtilInit(
  //             //screen util is required to make the ui perfect according to device screen size
  //             designSize: const Size(390, 800),
  //             // useInheritedMediaQuery: true,
  //             builder: (context, w) => const MyApp());
  //       },
  //     ),
  //   );
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'VidBuddy',

      // theme: ThemeConst.lightTheme,
      // translations: TranslationMessages(),
      debugShowCheckedModeBanner: false,
      // locale: Get.deviceLocale,
      // locale: const Locale('de','DE'),
      // fallbackLocale: const Locale('en', 'US'),
      getPages: PageRoutes.getPages(),
      initialRoute: PageRoutes.splash,
    );
  }
}
