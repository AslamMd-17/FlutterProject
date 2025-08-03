import 'dart:async';

import 'package:ecomflutter/screens/auth_ui/welcomescreen.dart';
import 'package:ecomflutter/screens/userpanel/mainscreen.dart';
import 'package:ecomflutter/utils/appconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2) , () {
      Get.offAll(WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appSecondaryColor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/splashscreenicon.jpeg', width: 250,height: 250),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 100),
              alignment: Alignment.center,
              width: Get.width,
              child: Text( AppConstants.appBuilt,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            )
          ],
        ),
      ),
    );
  }

}
