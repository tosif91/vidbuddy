import 'package:get/get.dart';
import 'package:vidbuddy/core/services/auth/facebook_auth_service.dart';
import 'package:vidbuddy/core/services/auth/google_auth_service.dart';
import 'package:vidbuddy/core/services/connectivity_service.dart';
import 'package:vidbuddy/core/services/local_storage_service.dart';
import 'package:vidbuddy/core/services/media_picker_service.dart';
import 'package:vidbuddy/core/services/notification_service.dart';
import 'package:vidbuddy/core/services/share_service.dart';

///Function to put some base controller
setUpLocator() {
  Get.lazyPut(() => HiveStorageService(), fenix: true);
  Get.lazyPut(() => FacebookAuthService(), fenix: true);
  Get.lazyPut(() => GoogleAuthService(), fenix: true);
  Get.lazyPut(() => NotificationService(), fenix: true);
  Get.lazyPut(() => ShareService(), fenix: true);
  Get.lazyPut(() => MediaPickerService(), fenix: true);
  Get.lazyPut(() => ConnectivityService(), fenix: true);
}
