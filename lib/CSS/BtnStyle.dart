import 'package:flutter/material.dart';

class BtnStyle {
  static TextStyle callBtnStyle(BuildContext context) {
    return Theme.of(context).textTheme.button.copyWith(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.w500);
  }
}