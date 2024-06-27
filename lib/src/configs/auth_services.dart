import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  // final firebaseStorage = FirebaseStorage.instance;

  // Sign in google
  Future<UserCredential?> signInWithGoogle() async {
    UserCredential? userCredential;
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      // Once signed in , return the UserCredential
      userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print('Error during Google Sign-In: $e');
    }

    return userCredential;
  }
}
