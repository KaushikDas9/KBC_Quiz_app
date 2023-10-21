import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Screen/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:overlay_support/overlay_support.dart';

Future<void>  main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(OverlaySupport.global(child: const MaterialApp(home: Login(),)));
}

