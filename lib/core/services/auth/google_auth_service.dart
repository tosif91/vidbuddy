import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vidbuddy/core/errors/failure.dart';
import 'package:vidbuddy/core/services/auth/i_auth_service.dart';

class GoogleAuthService implements IAuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );
  @override
  Future<Either<UserCredential, Failure>> signIn() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      // Once signed in, returONZn the UserCredential
      return Left(await FirebaseAuth.instance.signInWithCredential(credential));
    } catch (e) {
      return Right(Failure.generate(e as Exception));
    }
  }

  @override
  Future<Either<dynamic, Failure>> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      await _googleSignIn.signOut();

      return Left(true);
    } catch (e) {
      return Right(Failure.generate(e as Exception));
    }
  }
}
