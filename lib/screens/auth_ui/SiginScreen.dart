import 'dart:ui';

import 'package:ecomflutter/screens/auth_ui/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/appconstants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstants.appColor,
            elevation: 0,
            title: Text(
              "Sign-In",
              style: TextStyle(color: AppConstants.appTextColor, fontSize: 26),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? SizedBox.shrink()
                    : Column(
                        children: [
                          Image.asset("assets/images/splashscreenicon.jpeg"),
                        ],
                      ),
                SizedBox(height: Get.height / 26),
                Container(
                  margin: EdgeInsets.all(5),
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
                ),
                SizedBox(height: Get.height / 70),
                Container(
                  margin: EdgeInsets.all(5),
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
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 50),
                  child: Text("Forgot Password!"),
                ),
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
                        "Sign-In",
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
                    Text("Don't have an Account?"),
                    GestureDetector(onTap: () => Get.offAll(SignUpScreen()),child: Text("Sign-Up", style: TextStyle(fontWeight: FontWeight.bold),)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
