import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vidbuddy/core/errors/failure.dart';
import 'package:vidbuddy/core/services/auth/i_auth_service.dart';

class FacebookAuthService implements IAuthService {
  @override
  Future<Either<UserCredential, Failure>> signIn() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login(
        permissions: [
          'email',
          'public_profile',
        ],
        loginBehavior: LoginBehavior.webOnly,
      );
      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      // Once signed in, return the UserCredential
      return Left(await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential));
    } catch (e) {
      return Right(Failure.generate(e as Exception));
    }
  }

  @override
  Future<Either<dynamic, Failure>> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      await FacebookAuth.instance.logOut();
      return const Left(true);
    } catch (e) {
      return Right(Failure.generate(e as Exception));
    }
  }
}
