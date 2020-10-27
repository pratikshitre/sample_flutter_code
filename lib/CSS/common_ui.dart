import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/CSS/textcss.dart';

Widget customappbar(String title) {
  return AppBar(
    title: Text(title, style: TextStyle(color: Colors.white,fontSize: 20.0)),
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.blue[900], Colors.blue])),
    ),
  );
}

Widget toastFunctioncolor(BuildContext context, String msg,Color col) {
  return Flushbar(backgroundColor: col,
    margin: EdgeInsets.only(
        left: setWidth(15), right: setWidth(15), bottom: setHeight(50)),
    borderRadius: setHeight(8),
    flushbarStyle: FlushbarStyle.FLOATING,
    // message: msg,
    messageText: Text(
      msg,
      style: txtStyle(
        18,
        Colors.white,
      ),
    ),

    duration: Duration(seconds: 3),
  )..show(context);
}

