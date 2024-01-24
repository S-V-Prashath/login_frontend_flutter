import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/src/constants/images.dart';
import 'package:login/src/util/screens/otpscreen/otpphonescreen.dart';

class resetphonescreen extends StatelessWidget {
  const resetphonescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(forgetpassword),width: 350,height: 350,),
                Text("Forget Password",style: GoogleFonts.rubik(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3)),
                SizedBox(height: 20,),
                Text("Enter your phone number to reset your password",
                  style: GoogleFonts.rubik(fontSize: 20),),
                SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("Phn No."),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone_android_outlined)
                  ),
                ),
                SizedBox(height: 50,),
                SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(()=>otpphonescreen());
                      },
                      child: Text("Next",style: TextStyle(fontSize: 20,letterSpacing: 3,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3457b9),
                      ),
                    )
                ),
              ],
            )

          ),
        ),
      ),
    );
  }
}