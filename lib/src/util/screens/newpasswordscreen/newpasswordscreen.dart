import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/src/util/screens/loginscreen/loginscreen.dart';

class newpasswordscreen extends StatelessWidget {
  const newpasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Center(
            child: Container
              (
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Change your password",style: GoogleFonts.rubik(fontSize: 40,fontWeight: FontWeight.bold,letterSpacing: 3),),
                  SizedBox(height: 50,),
                  //new password
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("New Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.fingerprint_outlined),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp)
                    ),
                  ),
                  SizedBox(height: 20,),
                  //confirm new password
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Confirm new Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.fingerprint_outlined),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp)
                    ),
                  ),
                  SizedBox(height: 20,),
                  //update
                  SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: (){
                          Get.to(()=>loginscreen());
                        },
                        child: Text("UPDATE",style: TextStyle(fontSize: 20,letterSpacing: 3,fontWeight: FontWeight.bold),),
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
      ),
    );
  }
}
