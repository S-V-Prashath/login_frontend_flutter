import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../newpasswordscreen/newpasswordscreen.dart';

class otpphonescreen extends StatelessWidget {
  const otpphonescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("O",style: TextStyle(fontSize: 300),),
                      Column(
                        children: [
                          Text("T",style: TextStyle(fontSize: 100),),
                          Text("P",style: TextStyle(fontSize: 100))
                        ],
                      )
                    ],
                  ),
                ),
                Text("Verification",style: GoogleFonts.rubik(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3),),
                SizedBox(height: 20,),
                Text("Enter the verification code sent to +91 7263514253",
                  style: GoogleFonts.rubik(fontSize: 20),),
                SizedBox(height: 60,),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 60,
                  style: TextStyle(
                      fontSize: 30
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(height: 50,),
                //next button
                SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(()=>newpasswordscreen());
                      },
                      child: Text("NEXT",style: TextStyle(fontSize: 20,letterSpacing: 3,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3457b9),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
