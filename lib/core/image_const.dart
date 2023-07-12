import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

String getImagePath(String imageName) {
  return "assets/images/$imageName";
}

String getIconPath(String imageName) {
  return "assets/icons/$imageName";
}

enum ImageConst {
  cart,
  categorySelected,
  chat,
  check,
  cross,
  commentSend,
  cameraPlus,
  discountSelected,
  deliveryFree,
  delivery24hr,
  deliveryNonReturnable,
  delete,
  document,
  edit,
  emptyPlaceholder,
  facebook,

  follow,
  google,
  heart,
  help,
  homeSelected,
  homebrand,
  logout,
  location,
  meskyLogo,
  notification,
  orderProfile,
  profile,
  profileQ,
  payment,
  search,
  send,
  share,
  star,
  fullStar,
  halfStar,
  emptyStar,
  tick,
  taskDone,
  userGroup,
  wishlist,
  filter,
  noImage,
  onBoard1,
  onBoard2,
  onBoard3,
  profileBackground,
  shopall,
  sort,
}

extension ImagePath on ImageConst {
  String _getFileExtension(String fileName) {
    try {
      return fileName.split('.').last;
    } catch (e) {
      return '';
    }
  }

  Widget loadImage(
      {double? height,
      ColorFilter? filter,
      double? width,
      BoxFit fit = BoxFit.contain,
      Color? color}) {
    String ext = _getFileExtension(getPath());
    if (ext != 'svg') {
      return Image.asset(
        getPath(),
        fit: fit,
        height: height?.r,
        width: width?.r,
      );
    } else {
      try {
        return SvgPicture.asset(
          getPath(),
          fit: fit,
          color: color,
          height: height?.r,
          colorFilter: filter,
          width: width?.r,
        );
      } catch (e) {
        return const Text('asset not found');
      }
    }
  }

  String getPath() {
    switch (this) {
      case ImageConst.cart:
        return getIconPath('cart.svg');
      case ImageConst.categorySelected:
        return getIconPath('category_selected.svg');
      case ImageConst.chat:
        return getIconPath('chat.svg');
      case ImageConst.cross:
        return getIconPath('cross.svg');
      case ImageConst.check:
        return getIconPath('check.svg');
      case ImageConst.cameraPlus:
        return getIconPath('camera_plus.svg');
      case ImageConst.commentSend:
        return getIconPath('comment_send.svg');
      case ImageConst.discountSelected:
        return getIconPath('discount_selected.svg');
      case ImageConst.deliveryFree:
        return getIconPath('delivery_free.svg');
      case ImageConst.delivery24hr:
        return getIconPath('delivery_24hr.svg');
      case ImageConst.deliveryNonReturnable:
        return getIconPath('delivery_non_returnable.svg');
      case ImageConst.delete:
        return getIconPath('delete.svg');
      case ImageConst.document:
        return getIconPath('document.svg');
      case ImageConst.edit:
        return getIconPath('edit.svg');
      case ImageConst.facebook:
        return getIconPath('facebook.svg');
      case ImageConst.follow:
        return getIconPath('follow.svg');
      case ImageConst.filter:
        return getIconPath('filter.svg');
      case ImageConst.google:
        return getIconPath('google.svg');
      case ImageConst.heart:
        return getIconPath('heart.svg');
      case ImageConst.help:
        return getIconPath('help.svg');
      case ImageConst.homeSelected:
        return getIconPath('home_selected.svg');
      case ImageConst.homebrand:
        return getIconPath('home.svg');
      case ImageConst.location:
        return getIconPath('location.svg');
      case ImageConst.logout:
        return getIconPath('logout.svg');
      case ImageConst.meskyLogo:
        return getIconPath('mesky_logo.svg');
      case ImageConst.notification:
        return getIconPath('notification.svg');
      case ImageConst.orderProfile:
        return getIconPath('order_profile.svg');
      case ImageConst.profile:
        return getIconPath('profile.svg');
      case ImageConst.profileQ:
        return getIconPath('profile_q.svg');
      case ImageConst.payment:
        return getIconPath('payment.svg');
      case ImageConst.search:
        return getIconPath('search.svg');
      case ImageConst.send:
        return getIconPath('send.svg');
      case ImageConst.share:
        return getIconPath('share.svg');
      case ImageConst.sort:
        return getIconPath('sort.svg');
      case ImageConst.star:
        return getIconPath('star.svg');
      case ImageConst.fullStar:
        return getIconPath('full_star.svg');
      case ImageConst.emptyStar:
        return getIconPath('empty_star.svg');
      case ImageConst.halfStar:
        return getIconPath(
            'full_star.svg'); //....................................
      case ImageConst.tick:
        return getIconPath('tick.svg');
      case ImageConst.taskDone:
        return getIconPath('task_done.svg');
      case ImageConst.userGroup:
        return getIconPath('user_group.svg');
      case ImageConst.wishlist:
        return getIconPath('wishlist.svg');
      case ImageConst.emptyPlaceholder:
        return getImagePath('empty_placeholder.png');
      case ImageConst.noImage:
        return getImagePath('noimage.jpg');
      case ImageConst.onBoard1:
        return getImagePath('onboard1.png');
      case ImageConst.onBoard2:
        return getImagePath('onboard2.png');
      case ImageConst.onBoard3:
        return getImagePath('onboard3.png');
      case ImageConst.profileBackground:
        return getImagePath('profile_background.png');
      case ImageConst.shopall:
        return getImagePath('shop_all.png');
    }
  }
}
