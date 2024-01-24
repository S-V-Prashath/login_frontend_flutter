import 'dart:math';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:login/src/util/screens/homescreen/homescreen.dart';
import 'package:login/src/util/screens/loginscreen/loginscreen.dart';
import 'package:login/src/util/screens/otpscreen/otpmailscreen.dart';
import 'package:login/src/util/screens/resetpasswordscreen/resetphonescreen.dart';
import 'package:login/src/util/screens/signupscreen/signupscreen.dart';
import 'package:login/src/util/screens/splashscreen/splashscreen.dart';

import 'src/util/screens/newpasswordscreen/newpasswordscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       // routes: {
       //   '/':(context)=>splahscreen(),
       //   '/home':(context)=>homescreen()
       // },
      debugShowCheckedModeBanner: false,
      home: signupscreen(),
    );
  }
}
