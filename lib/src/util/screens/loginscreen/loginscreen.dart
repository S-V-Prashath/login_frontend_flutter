import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/src/constants/images.dart';
import 'package:login/src/util/screens/mainscreen/mainscreen.dart';
import 'package:login/src/util/screens/resetpasswordscreen/resetemailscreen.dart';
import 'package:login/src/util/screens/resetpasswordscreen/resetphonescreen.dart';
import 'package:login/src/util/screens/signupscreen/signupscreen.dart';
import 'package:page_transition/page_transition.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Form(
          child: SingleChildScrollView(
            child: Container(
              height: size.height*1,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Text("LOGIN",style: GoogleFonts.rubik(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3),),
                  SizedBox(height: 80,),
                  //Email
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_3_outlined)
                    ),
                  ),
                  SizedBox(height: 20,),
                  //Password
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.fingerprint_outlined),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp)
                    ),
                  ),
                  //ForgetPassword
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: (){
                            showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                builder: (builder)=>
                                  Container(
                                    padding: EdgeInsets.all(30),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Make Selection",
                                          style: GoogleFonts.rubik(fontSize: 30,fontWeight: FontWeight.bold),),
                                        Text("Select one of the option given below to reset your password",
                                          style: GoogleFonts.rubik(fontSize: 20),),
                                        SizedBox(height: 30,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.pop(context);
                                            Get.to(()=>resetmailscreen());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.grey[200],
                                            ),
                                            //height: 100,
                                            child: Row(
                                              children: [
                                                Icon(Icons.email_outlined,size: 80,),
                                                SizedBox(width: 10,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email",style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.w500),),
                                                    Text("Reset via email verification",style: GoogleFonts.rubik(fontSize: 15,fontWeight: FontWeight.w400))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.pop(context);
                                            Get.to(()=>resetphonescreen());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.grey[200],
                                            ),
                                            //height: 100,
                                            child: Row(
                                              children: [
                                                Icon(Icons.phone_android,size: 80,),
                                                SizedBox(width: 10,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Phn NO",style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.w500),),
                                                    Text("Reset via phone verification",style: GoogleFonts.rubik(fontSize: 15,fontWeight: FontWeight.w400))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                          },
                          child: Text("Forget password?",style: TextStyle(fontSize: 20),)
                      )
                  ),
                  SizedBox(height: 20,),
                  //login button
                  SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                          onPressed: (){
                            Get.to(()=>mainscreen());
                          },
                          child: Text("LOGIN",style: TextStyle(fontSize: 20,letterSpacing: 3,fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF3457b9),
                          ),
                      )
                  ),
                  SizedBox(height: 20,),
                  Text("or",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  //sign in with google button
                  SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: (){},
                        label: Text("Sign in with google",
                          style: TextStyle(fontSize: 20,color: Color(0xFF3457b9),),),
                        icon: Image(image: AssetImage(google),width: 30,height: 30,),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2)
                        ),
                      )
                  ),
                  SizedBox(height:20 ,),
                  //signup button
                  TextButton(
                      onPressed: (){
                         Get.to(()=> signupscreen());
                        //Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: signupscreen()));
                        },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black,fontSize: 17),
                          children: [
                            TextSpan(
                              text: "Signup",
                              style: TextStyle(color: Colors.blue)
                            )
                          ]
                        ),



                      ),
                  )
                ],
              ),
            ),
          ),

        )
      ),
    );
  }
}
