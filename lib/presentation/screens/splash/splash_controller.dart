import 'package:get/get.dart';
import 'package:vidbuddy/core/mixin/base_controller.dart';
import 'package:vidbuddy/page_routes.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    Future.delayed(
        const Duration(
          milliseconds: 1500,
        ), () {
      _handleNavigation();
    });
    super.onInit();
  }

  _handleNavigation() {
    Get.toNamed(PageRoutes.home);
  }
}
