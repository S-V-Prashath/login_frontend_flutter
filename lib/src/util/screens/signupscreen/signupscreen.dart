import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/src/util/screens/loginscreen/loginscreen.dart';

import '../../../constants/images.dart';
class signupscreen extends StatefulWidget {
   signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  String value="";
  final _formkey = GlobalKey<FormState>();
  String name="";
  String email="";
  String phn="";
  String pwd  ="";
  bool showpwd = false;
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController phncontroller = new TextEditingController();
  TextEditingController pwdcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Container(
                //height: 900,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Text("SIGNUP",style: GoogleFonts.rubik(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3),),
                    SizedBox(height: 30,),
                    //full name
                    TextFormField(
                      controller: namecontroller,
                      validator: (value){
                        if(value!.trim()=="" || value.length<3)
                          return "Enter name";
                        return null;
                      },
                      decoration: InputDecoration(
                          label: Text("Full Name"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person_3_outlined)
                      ),
                    ),
                    SizedBox(height: 20,),
                    //email
                    TextFormField(
                      controller: emailcontroller,
                      validator: (value){
                        if(!value!.isEmail)
                          return "Invalid email";
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                      ),
                    ),
                    SizedBox(height: 20,),
                    //phone number
                    TextFormField(
                      controller: phncontroller,
                      validator: (value){
                        if(!(value!.startsWith("6") || !value!.startsWith("7")|| !value!.startsWith("8")|| !value!.startsWith("9")) || value!.length !=10)
                          return "Invalid phone number";
                        return "null";
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          label: Text("Phone Number"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone_android)
                      ),
                    ),
                    SizedBox(height: 20,),
                    //password
                    TextFormField(
                      controller: pwdcontroller,
                      validator: (value){
                        if(value!="" || value!.length<6){
                          return "invalid passwd";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.fingerprint_outlined),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp)
                      ),
                    ),
                    SizedBox(height: 20,),
                    //confirm password
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text("Confirm Password"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.fingerprint_outlined),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp)
                      ),
                    ),
                    SizedBox(height: 20,),
                    //signup
                    SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: (){
                            if(_formkey.currentState!.validate()){
                              setState(() {
                                name = namecontroller.text;
                                email = emailcontroller.text;
                                phn = phncontroller.text;
                                pwd = pwdcontroller.text;
                              });
                            }

                          },
                          child: Text("SIGNUP",style: TextStyle(fontSize: 20,letterSpacing: 3,fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF3457b9),
                          ),
                        )
                    ),
                    SizedBox(height: 20,),
                    Text("or",style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    //sign with google
                    SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: (){},
                          label: Text("Sign in with google",
                            style: TextStyle(fontSize: 20,color: Color(0xFF3457b9),),),
                          icon: Image(image: AssetImage(google),width: 20,height: 20,),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 2)
                          ),
                        )
                    ),
                    SizedBox(height:20 ,),
                    // already have an account
                    TextButton(
                      onPressed: (){Get.to(()=>loginscreen());},
                      child: RichText(
                        text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.black,fontSize: 17),
                            children: [
                              TextSpan(
                                  text: "Login",
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
