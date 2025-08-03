import 'package:ecomflutter/screens/auth_ui/SiginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/appconstants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appColor,
        elevation: 0,
        title: Text(
          "Welcome to ecomm!",
          style: TextStyle(color: AppConstants.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/splashscreenicon.jpeg',
                width: 250,
                height: 250,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Sign-In and Shoppin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Material(
              child: Container(
                width: Get.width / 1.3,
                height: Get.height / 15,
                decoration: BoxDecoration(
                  color: AppConstants.appColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton.icon(
                  onPressed: () => {},
                  label: Text(
                    "Sigin with google",
                    style: TextStyle(
                      color: AppConstants.appTextColor,
                      fontSize: 16,
                    ),
                  ),
                  icon: Image.asset(
                    'assets/images/splashscreenicon.jpeg',
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                ),
              ),
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
                child: TextButton.icon(
                  onPressed: () => Get.to(SignInScreen()),
                  label: Text(
                    "Sigin with email",
                    style: TextStyle(
                      color: AppConstants.appTextColor,
                      fontSize: 16,
                    ),
                  ),
                  icon: Image.asset(
                    'assets/images/splashscreenicon.jpeg',
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
