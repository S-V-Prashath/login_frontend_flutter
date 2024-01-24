import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login/src/constants/animations.dart';
import 'package:login/src/util/screens/homescreen/homescreen.dart';
import 'package:lottie/lottie.dart';

class splahscreen extends StatefulWidget {
  const splahscreen({super.key});

  @override
  State<splahscreen> createState() => _splahscreenState();
}

class _splahscreenState extends State<splahscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),() {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>homescreen()));}
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF3457b9),
      body: Container(
        child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [Lottie.asset(splashscreenanimation1)]
            ,)
      ),
    );
  }
}
