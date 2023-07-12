import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:vidbuddy/core/errors/failure.dart';
import 'package:vidbuddy/core/services/auth/facebook_auth_service.dart';
import 'package:vidbuddy/core/services/auth/google_auth_service.dart';

///Reuturn different auth service according to the given authType
IAuthService getAuthService(AuthType type) {
  switch (type) {
    case AuthType.facebook:
      return Get.find<FacebookAuthService>();
    case AuthType.google:
      return Get.find<GoogleAuthService>();
    default:
      return Get.find<GoogleAuthService>();
  }
}

enum AuthType { facebook, google, whatsapp }

abstract class IAuthService {
  Future<Either<UserCredential, Failure>> signIn();
  Future<Either<dynamic, Failure>> signOut();
}
