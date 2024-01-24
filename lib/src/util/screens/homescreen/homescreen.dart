import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/src/util/screens/signupscreen/signupscreen.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/animations.dart';
import '../loginscreen/loginscreen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,50,30,50),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Lottie.asset(loginscreenanimation1),
                SizedBox(height: 50,),
                Text("Build on your own",style: GoogleFonts.blackOpsOne(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Progress is made by lazy men looking for easier ways to do things",style: GoogleFonts.prompt(fontSize: 25,fontWeight: FontWeight.w400),),
                SizedBox(height: 40,),
                Row(
                  children: [
                    //login button
                    Expanded(
                        child: ElevatedButton(
                            onPressed: (){Get.to(()=>loginscreen());},
                            child: Text("LOGIN",style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3),),

                            style: ElevatedButton.styleFrom(
                              //side: BorderSide(width: 5,color: Colors.black),
                              backgroundColor: Color(0xFF3457b9),
                              padding: EdgeInsets.all(20)
                            ),
                        )),
                    SizedBox(width: 10,),
                    //signup button
                    Expanded(
                        child: OutlinedButton(
                            onPressed: (){Get.to(()=>signupscreen());},
                            child: Text("SIGN UP",style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3,color: Color(0xFF3457b9))),
                            style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black,width: 1.5),
                              padding: EdgeInsets.all(20)
                            ),
                        )
                    )
                  ],
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
