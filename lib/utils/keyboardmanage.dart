import 'package:flutter/material.dart';

class KeyboardUtils{
  static void hideKeyboard(BuildContext context){
    FocusScopeNode currentFocus = FocusScope.of(context);
    //closes opened keyboard
    if(!currentFocus.hasPrimaryFocus){
      currentFocus.unfocus();
    }
  }
}