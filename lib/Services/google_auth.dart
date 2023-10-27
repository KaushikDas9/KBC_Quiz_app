import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kbc_quiz_app/Services/firedb.dart';
import 'package:kbc_quiz_app/Services/localdb.dart';

class Google_auth {
 FirebaseAuth _auth = FirebaseAuth.instance ;
 GoogleSignIn? _googleSignIn = GoogleSignIn();

 Future<User?> my_sing_in_with_google(BuildContext context) async{
     
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn?.signIn();
      GoogleSignInAuthentication? google_singin_authentication = await googleSignInAccount?.authentication;
      AuthCredential credential =await GoogleAuthProvider.credential(accessToken: google_singin_authentication?.accessToken,idToken:google_singin_authentication?.idToken );
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      User? user = await userCredential.user;
      assert(!user!.isAnonymous);
      assert(user?.getIdToken() != null );
      
      // add User details in fireStore 
      firedb().createNewUser(context,user!.displayName.toString(),user.email.toString() , user.photoURL.toString(), user.uid.toString());
      Localdb().saveUserId(user.uid.toString());
    return user ; 
    }
}