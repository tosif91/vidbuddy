import 'package:get/get.dart';
import 'package:vidbuddy/core/services/local_storage_service.dart';
import 'package:vidbuddy/presentation/general_controller.dart';

class BaseController extends GetxController {
  ///Variable is used to handle the controller busy state
  final RxBool _isBusy = false.obs;
  final GeneralController generalController = GeneralController();
  final localStorage = getLocalStorageService();

  get isBusy => _isBusy.value;
  setBusy(
    bool state,
  ) {
    _isBusy.value = state;
  }

  RxBool getRxBusy() => _isBusy;
}
