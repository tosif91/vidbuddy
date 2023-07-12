import 'package:url_launcher/url_launcher.dart';
import 'package:vidbuddy/core/mixin/mlogger.dart';

class UrlLauncherService with MLogger {
  ///Open the passed valid url in a browser
  Future<bool> openUrl(String url) async {
    try {
      return await launchUrl(
        Uri.parse(url),
      );
    } catch (e) {
      loge('Url Service : $e');
      return false;
    }
  }
}
