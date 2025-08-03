import 'package:ecomflutter/utils/appconstants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName, style: TextStyle(color: AppConstants.appTextColor),),
        centerTitle: true,
        backgroundColor: AppConstants.appStatusBarColor,),
    );
  }
}
