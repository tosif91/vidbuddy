part of 'extension.dart';

extension StrExtension on String? {
  String get() {
    return this ?? "N/A";
  }

  bool get isNullOrEmpty {
    return this == null || (this != null && this?.isEmpty == true);
  }

  DateTime convertFromServer() {
    return isNullOrEmpty ? DateTime.now() : DateTime.parse(this!);
  }

  String convertDate({String? format = "dd.MM hh:mm"}) {
    DateFormat formatter = DateFormat(format);
    return formatter.format(convertFromServer());
  }

  bool isNumeric() {
    if (this == null) {
      return false;
    }
    return double.parse(this!) != null;
  }

  bool validDouble() {
    if (this == null) {
      return false;
    }
    return double.tryParse(this!) != null && double.tryParse(this!)! > 0;
  }

  Color colorFromHex() {
    if (this == null) return const Color(0xffFFFFFF);
    final hexCode = this!.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  Widget loadNetworkImage(
          {double? height,
          double? width,
          BoxFit? fit,
          String? errorImg,
          double? aspectRatio}) =>
      CachedNetworkImage(
          //  cacheManager: CacheManager(
          //     Config(
          //       "fluttercampus",
          //       stalePeriod: const Duration(days: 7),
          //       ``
          //       //one week cache period
          //     )
          // ),
          placeholder: (BuildContext c, String s) => AspectRatio(
                aspectRatio: aspectRatio ?? 4 / 4,
                child: Container(
                  width: double.infinity,
                  // color: AppColors.lightTextGrey,
                  alignment: Alignment.center,
                  child: CircularLoader(
                      color: AppColors.satYellow.withOpacity(0.4)),
                ),
              ),
          // progressIndicatorBuilder: (context, url, progress) => Center(
          //       child: CircularProgressIndicator(
          //         value: progress.progress,
          //         color: const Color(0xFF03DAC5),
          //       ),
          //     ),
          fit: fit ?? BoxFit.fill,
          height: height?.r,
          width: width?.r,
          fadeInCurve: Curves.linear,
          fadeInDuration: const Duration(milliseconds: 750),
          fadeOutCurve: Curves.linear,
          fadeOutDuration: const Duration(milliseconds: 750),
          errorWidget: (context, url, error) => (errorImg != null)
              ? errorImg.loadNetworkImage()
              : ImageConst.noImage.loadImage(),
          imageUrl: (this ?? '').isEmpty ? AppConstants.noImageURL : this!);

  Widget loadNetworkImageWithInitials(
          {double? height, double? width, BoxFit? fit, String? initials}) =>
      CachedNetworkImage(
          placeholder: (BuildContext c, String s) => const Center(
              // child:
              //     Lottie.asset(LottieConstants.loader, height: 40, width: 40),
              ),
          fit: fit ?? BoxFit.fill,
          height: height,
          width: width,
          errorWidget: (_, __, ___) => SizedBox(
                height: height,
                width: width,
                // color: AppColors.grey1c,
                child: Center(
                  child: Text(
                    initials ?? 'N/A',
                    // style: TxtStyles.txtProductBrndLrg20700
                    //     .copyWith(color: AppColors.white),
                  ),
                ),
              ),
          imageUrl: this!);
}
