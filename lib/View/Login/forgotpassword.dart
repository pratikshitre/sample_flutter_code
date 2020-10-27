import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/CSS/RaisedGradientButton.dart';
import 'package:matrimony/CSS/common_ui.dart';
import 'package:matrimony/Controller/apicall.dart';

import '../../CSS/textcss.dart';
import '../../CSS/textcss.dart';
import '../Config/global.dart';
import '../Config/global.dart';

class Forgotpassword extends StatefulWidget {
  Forgotpassword({Key key}) : super(key: key);

  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  bool enable = true;
  bool enable1 = false;
  bool enable2 = false;
   bool loading = false;
  bool loading1 = false;
  bool loading2 = false;
  String email;
  String otp;
  String password;
  String repassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar("Forgot Password"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 6.0,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                width: screenWidth,
                // height: 80.0,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Email Verfication",
                              style: TextStyle(fontSize: setFontSize(16.0))),
                        ),
                        Container(
                          color: Colors.white,
                          //width: setWidth(230.0),
                          child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              enabled: enable,
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail_outline),
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(50.0),
                                    ),
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Container(
                            width: setWidth(100.0),
                            child: AbsorbPointer(
                              absorbing: !enable,
                              child:    loading? Center(
                                                                child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(themeColorYellow),
              ),
                                                              ):
                              RaisedGradientButton(
                                  onPressed: () {
                                    var params = {
                                      "email": email,
                                    };
                                    setState(() {
                                       loading=true;
                                    });
                                   
                                    APICall.returnAPI(
                                            "send-otp", context, params)
                                        .then((apiHitData) {
                                      if (this.mounted) {
                                        setState(() {
                                          loading=false;
                                          final body = json.decode(apiHitData);
                                          if (body['msg'] == "200") {
                                            setState(() {
                                              enable = false;
                                              enable1 = true;
                                            });
                                            toastFunctioncolor(
                                                context,
                                                "Otp send your register email..",
                                                Colors.green);
                                          } else if (body['msg'] == "404") {
                                            toastFunctioncolor(context,
                                                "Email not found.", Colors.red);
                                          } else {
                                            toastFunctioncolor(
                                                context,
                                                "Something Went Wrong.",
                                                Colors.red);
                                          }
                                        });
                                      }
                                    });
                                  },
                                  gradient: LinearGradient(
                                      colors: enable
                                          ? [Colors.blue[900], Colors.blue]
                                          : [Colors.grey, Colors.grey]),
                                  child: Text(
                                    "Send OTP",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ),
                        Divider(
                          endIndent: 40.0,
                          indent: 40.0,
                          color: Colors.grey,
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("OTP Verfication",
                              style: TextStyle(fontSize: setFontSize(16.0))),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: new TextField(
                              enabled: enable1,
                              obscureText: true,
                              onChanged: (value) {
                                otp = value;
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(50.0),
                                    ),
                                  ),
                                  filled: true,
                                  focusColor: Colors.blue,
                                  prefixIcon: Icon(Icons.format_list_bulleted),
                                  labelText: "Enter OTP",
                                  fillColor: Colors.white70),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                              width: setWidth(100.0),
                              child: AbsorbPointer( absorbing: !enable1,
                                                              child: 
                                                              loading1? Center(
                                                                child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(themeColorYellow),
              ),
                                                              ):
                                                              RaisedGradientButton(
                                  child: Text(
                                    "Verify OTP",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    var params = {
                                      "email": email,
                                      "otp": otp,
                                    };
                                    setState(() {
                                      loading1=true;
                                    });
                                    APICall.returnAPI(
                                            "verify-otp", context, params)
                                        .then((apiHitData) {
                                      if (this.mounted) {
                                        setState(() {
                                          final body = json.decode(apiHitData);
                                          loading1=false;
                                          if (body['msg'] == "200") {
                                            setState(() {
                                              enable1=false;
                                              enable2 = true;
                                            });
                                            toastFunctioncolor(context,
                                                "Otp Match", Colors.green);
                                          } else if (body['msg'] == "404") {
                                            toastFunctioncolor(context,
                                                "Otp not Match", Colors.red);
                                          } else if (body['msg'] == "401") {
                                            toastFunctioncolor(context,
                                                "Otp Expire", Colors.red);
                                          } else {
                                            toastFunctioncolor(
                                                context,
                                                "Something Went Wrong.",
                                                Colors.red);
                                          }
                                        });
                                      }
                                    });
                                  },
                                  gradient: LinearGradient(
                                      colors: enable1
                                          ? [Colors.blue[900], Colors.blue]
                                          : [Colors.grey, Colors.grey]),
                                ),
                              )),
                        ),
                        Divider(
                          endIndent: 40.0,
                          indent: 40.0,
                          color: Colors.grey,
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Password Reset",
                              style: TextStyle(fontSize: setFontSize(16.0))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            color: Colors.white,
                            //width: setWidth(230.0),
                            child: TextField(
                                  obscureText: true,
                                  enabled: enable2,
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock_outline),
                                      labelText: "Password",
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(50.0),
                                        ),
                                      ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            color: Colors.white,
                            //width: setWidth(230.0),
                            child: TextField(
                                  obscureText: true,
                                  keyboardType: TextInputType.emailAddress,
                                  enabled: enable2,
                                  onChanged: (value) {
                                    repassword = value;
                                  },
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock_open),
                                      labelText: "Re- Enter Password",
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(50.0),
                                        ),
                                      ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                              // width: setWidth(100.0),
                              child: AbsorbPointer(absorbing: !enable2,
                                                              child:
                                                                loading2? Center(
                                                                child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(themeColorYellow),
              ),
                                                              ): 
                                                              RaisedGradientButton(
                            child: Text(
                                "Change Your password",
                                style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                                if (password == repassword) {
                                  var params = {
                                    "newpassword": password,
                                    "confirmpassword": repassword,
                                    "email": email,
                                  };
                                  setState(() {
                                    loading2=true;
                                  });
                                  APICall.returnAPI(
                                          "password-change", context, params)
                                      .then((apiHitData) {
                                    if (this.mounted) {
                                      setState(() {
                                        loading2=false;
                                        final body = json.decode(apiHitData);
                                        if (body['msg'] == "200") {
                                          setState(() {
                                            enable2 = false;
                                            Navigator.pushNamed(context,"/Login");
                                          });
                                          toastFunctioncolor(
                                              context, "Password change succesfully.", Colors.green);
                                        } else if (body['msg'] == "404") {
                                          toastFunctioncolor(context,
                                              "Otp not Match", Colors.red);
                                        } else if (body['msg'] == "401") {
                                          toastFunctioncolor(
                                              context, "Otp Expire", Colors.red);
                                        } else {
                                          toastFunctioncolor(
                                              context,
                                              "Something Went Wrong.",
                                              Colors.red);
                                        }
                                      });
                                    }
                                  });
                                } else {
                                  toastFunctioncolor(
                                      context,
                                      "Plase enter same password",
                                      Colors.yellow[900]);
                                }
                            },
                            gradient: LinearGradient(
                                  colors: enable2
                                      ? [Colors.blue[900], Colors.blue]
                                      : [Colors.grey, Colors.grey]),
                          ),
                              )),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
