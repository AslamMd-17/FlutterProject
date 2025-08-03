import 'dart:ui';

import 'package:ecomflutter/screens/auth_ui/SiginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/appconstants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstants.appColor,
            elevation: 0,
            title: Text(
              "Sign-Up",
              style: TextStyle(color: AppConstants.appTextColor, fontSize: 26),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: Get.height / 26),
                  Container(alignment: Alignment.center,child: Text("Create an Account", style: TextStyle(fontSize: 30),)),
                  SizedBox(height: Get.height / 26),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width / 1.2,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "UserName",
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.only(top: 0.2, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),//username
                  SizedBox(height: Get.height / 70),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width / 1.2,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail),
                          contentPadding: EdgeInsets.only(top: 0.2, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),//mail
                  SizedBox(height: Get.height / 70),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width / 1.2,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Phone",
                          prefixIcon: Icon(Icons.phone),
                          contentPadding: EdgeInsets.only(top: 0.2, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),//phone
                  SizedBox(height: Get.height / 70),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width / 1.2,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextFormField(
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          hintText: "Address",
                          prefixIcon: Icon(Icons.location_pin),
                          contentPadding: EdgeInsets.only(top: 0.2, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),//address
                  SizedBox(height: Get.height / 70),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width / 1.2,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.visibility_off),
                          contentPadding: EdgeInsets.only(top: 0.2, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),//password
                  SizedBox(height: Get.height/23,),
                  Material(
                    child: Container(
                      width: Get.width / 1.3,
                      height: Get.height / 15,
                      decoration: BoxDecoration(
                        color: AppConstants.appColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "Sign-Up",
                          style: TextStyle(
                            color: AppConstants.appTextColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height/23,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account?"),
                      GestureDetector(onTap: ()=>Get.offAll(SignInScreen()),child: Text("Sign-In", style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
