import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Google_auth {
 FirebaseAuth _auth = FirebaseAuth.instance ;
 GoogleSignIn? _googleSignIn = GoogleSignIn();

 Future<User?> my_sing_in_with_google() async{
     
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn?.signIn();
      GoogleSignInAuthentication? google_singin_authentication = await googleSignInAccount?.authentication;
      AuthCredential credential =await GoogleAuthProvider.credential(accessToken: google_singin_authentication?.accessToken,idToken:google_singin_authentication?.idToken );
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      User? user = await userCredential.user;
      assert(!user!.isAnonymous);
      assert(user?.getIdToken() != null );

    return user ; 
    }
}