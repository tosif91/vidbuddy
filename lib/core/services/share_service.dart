import 'package:share_plus/share_plus.dart';

IShareService getShareService() => ShareService();

abstract class IShareService {
  Future<bool> shareText(String text);
  Future<bool> shareFiles({required List<String> dirs, String? text});
}

class ShareService implements IShareService {
  @override
  shareText(String text) async {
    ShareResult res = await Share.shareWithResult(text);
    return res.status == ShareResultStatus.success;
  }

  @override
  Future<bool> shareFiles({required List<String> dirs, String? text}) async {
    List<XFile> files =
        List.generate(dirs.length, (index) => XFile(dirs[index]));
    ShareResult res = await Share.shareXFiles(
      files,
      text: text,
    );
    return res.status == ShareResultStatus.success;
  }
}
