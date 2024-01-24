
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/src/util/screens/newpasswordscreen/newpasswordscreen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class otpmailscreen extends StatelessWidget {
  const otpmailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
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
                Text("Enter the verification code sent to someone@something.com",
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
