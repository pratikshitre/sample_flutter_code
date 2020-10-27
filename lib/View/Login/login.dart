import 'package:flutter/material.dart';
//import 'package:easyplacement/View/Home/parentsignup.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/View/Config/global.dart';
import 'package:matrimony/View/Login/loginHeader.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:easyplacement/style/theme.dart' as Theme;
//import 'package:easyplacement/utils/bubble_indication_painter.dart';
import 'dart:math';
import 'dart:convert';

import '../../CSS/Colors.dart';
import '../../CSS/textcss.dart';
import '../../Controller/apicall.dart';
import 'common.dart';
import 'mainDashboard.dart';

// Note: for simplicity, this is a stateless widget but, in a real app,
// a full screen is likely to be a stateful widget.
bool buttonpressed = false;
TextEditingController emailController = TextEditingController();
TextEditingController emailController1 = TextEditingController();
TextEditingController passwordController = TextEditingController();
PageController _pageController;
Color left = Colors.black;
Color right = Colors.white;

bool _autoValidate = false;
bool _isLoading = false;
String _email;
String _mobileno;
//OTPData otpInfo;

bool _autoValidateparent = false;
bool _isLoadingparent = false;

bool policy = false;
bool _obscureTextSignup = true;
bool _obscureTextSignupConfirm = true;

TextEditingController loginPasswordController = TextEditingController();
TextEditingController mobileController = TextEditingController();

final FocusNode myFocusNodeEmailLogin = FocusNode();
final FocusNode myFocusNodePasswordLogin = FocusNode();
final FocusNode parentemail = FocusNode();
final FocusNode parentmobile = FocusNode();
final FocusNode myFocusNodeName = FocusNode();

class Login extends StatefulWidget {
  final String msg;

  const Login({Key key, this.msg}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Login>
    with SingleTickerProviderStateMixin {
//class Login extends StatelessWidget {

  PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  bool _autoValidate = false;
  bool _isLoading = false;
  String _password;
  String _email;
  _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _validateInputsparent() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      setState(() {
        _autoValidateparent = true;
        _isLoadingparent = true;
      });
    } else {
      setState(() {
        _autoValidateparent = false;
        _isLoadingparent = false;
      });
    }
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      buttonpressed = true;
      setState(() {
        _autoValidate = true;
      });
    } else {
      setState(() {
        _autoValidate = false;
        _isLoading = false;
      });
    }
  }

  String validatepassword(String value) {
    if (value.length == 0) return 'Please Enter password';
// if (!regex.hasMatch(value))
//   return 'Enter Valid Email';
// else {
//   return null;
// }
  }

  String validateEmail(String value) {
    if (value.length == 0) return 'Please Enter email';
// if (!regex.hasMatch(value))
//   return 'Enter Valid Email';
// else {
//   return null;
// }
  }

  String validateusername(String value) {
    if (value.length == 0) return 'Please Enter username';
// if (!regex.hasMatch(value))
//   return 'Enter Valid Email';
// else {
//   return null;
// }g
  }

  String validatePassword(String value) {
    if (value.length == 0)
      return 'Please Enter Password';
    else {
      return null;
    }
  }

  void initState() {
      
    buttonpressed = false;
    if (widget.msg != null)
      new Future<Null>.delayed(Duration.zero, () {
        setState(() {
          scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text(widget.msg),
              duration: Duration(seconds: 3),
            ),
          );
//Navigator.pop(context);
        });
      });
    super.initState();
//CheckLoginController.checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: true,
          body: NotificationListener<OverscrollIndicatorNotification>(
            // ignore: missing_return
            onNotification: (overscroll) {
              overscroll.disallowGlow();
            },
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height >= 775.0
                    ? MediaQuery.of(context).size.height
                    : 775.0,
                color: login_background_color,
                //  decoration: new BoxDecoration(
                //    gradient: new LinearGradient(
                //        colors: [
                //          themeColorRedBrown,themeColorYellow
                //        ],
                //        begin: const FractionalOffset(0.0, 0.0),
                //        end: const FractionalOffset(1.0, 1.0),
                //        stops: [0.0, 1.0],
                //        tileMode: TileMode.clamp),
                //  ),
                child: MyHeader(),
                // Column(
                //   mainAxisSize: MainAxisSize.max,
                //   children: <Widget>[
                    // Padding(
                    //   padding: EdgeInsets.only(top: setHeight(175.0)),
                    //   child: new Image(
                    //       // width: MediaQuery.of(context).size.width * 0.9,
                    //       height: setHeight(100),
                    //       fit: BoxFit.fill,
                    //       image: new AssetImage(
                    //           'assets/images/logo/edupluscamp.png')),
                    // ),
                    // MyHeader(
                    //   image: "assets/images/logo/edupluscampuswhite.png",
                      // textTop: "",
                      // textBottom: "",  
                      // offset: 35,  
                    // ),
                    // _buildSignIn(context),
                //   ],
                // ),
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildSignIn(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: setHeight(60.0)),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 8.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: setHeight(15.0),
                            bottom: setHeight(10.0),
                            left: setWidth(25.0),
                            right: setWidth(25.0)),
                        child: TextFormField(
                          focusNode: myFocusNodeEmailLogin,
                          // style: txtStyle(14, Colors.black,
                          //     fontWeight: FontWeight.bold),
                          controller: emailController,
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(myFocusNodePasswordLogin),
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            icon: Icon(Icons.person),
                          ),
                          keyboardType: TextInputType.text,
                          validator: validateusername,
                          onSaved: (String val) {
                            _email = val;
                            //makeRequest(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: setHeight(5.0),
                            bottom: setHeight(10.0),
                            left: setWidth(25.0),
                            right: setWidth(25.0)),
                        child: TextFormField(
                          focusNode: myFocusNodePasswordLogin,
                          //validator: validatepassword,
                          obscureText: _obscureText,
                          // style: txtStyle(14, Colors.black,
                          //     fontWeight: FontWeight.bold),
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            icon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: themeColorBlue,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            // suffixIcon: InkWell(
                            //   onTap: _toggle(),
                            //   child:  Padding(
                            //     padding:  EdgeInsets.only(top: 15.0),
                            //     child:  Icon(
                            //       Icons.remove_red_eye,

                            //     )),
                            // )
                          ),
                          keyboardType: TextInputType.text,
                          validator: validatePassword,
                          onSaved: (String val) {
                            _password = val;
                            //makeRequest(context);
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(right: setWidth(30)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                "/ForgotPassword",
                              );
                            
                            },
                            child: Text('Forgot Password ?',
                                style: txtStyle(12, themeColorYellow)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: setHeight(200), bottom: setHeight(10)),
                  // width: MediaQuery.of(context).size.width * 0.5,
                  // height: MediaQuery.of(context).size.height * 0.073,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 6.0),
                        blurRadius: 20.0,
                      ),
                      // BoxShadow(
                      //   color: Colors.black,
                      //   offset: Offset(1.0, 6.0),
                      //   blurRadius: 20.0,
                      // ),
                    ],
                    gradient: new LinearGradient(
                        colors: [gradient_linear1, gradient_linear2],
                        begin: const FractionalOffset(0.2, 0.2),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: MaterialButton(
                      highlightColor: Colors.transparent,
                      splashColor: themeColorYellow,
                      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 42.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: setFontSize(20.0),
                              fontFamily: "WorkSansBold"),
                        ),
                      ),
                      onPressed: () async {
                        // Navigator.pushNamed(
                        //   context,
                        //   "/AttendanceDashboard",
                        // );
                        setState(() {
                          _isLoading = true;
                        });
                        _validateInputs();
                        String mystatus;
                        if (_autoValidate) {
                          // CheckLoginController.loginApp(context,
                          //         emailController.text, passwordController.text)
                          //     .then((status) {
                          //   if (this.mounted) {
                          //     setState(() {
                          //       mystatus = status;
                          //       if (mystatus != "200") {
                          //         setState(() {
                          //           _isLoading = false;
                          //         });
                          //       }
                          //       scaffoldKey.currentState.showSnackBar(
                          //         SnackBar(
                          //           content: Text(mystatus),
                          //           duration: Duration(seconds: 3),
                          //         ),
                          //       );
                          //     });
                          //   }
                          // });
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          var params = {
                            "uid": emailController.text,
                            "pass": passwordController.text,
                          };
                          APICall.returnAPI("login", context, params)
                              .then((apiHitData) {
                            if (this.mounted) {
                              setState(() {
                                final body = json.decode(apiHitData);
                                if (body['msg'] == "200") {
                                  prefs.clear();
                                  prefs.setString(
                                      "username", emailController.text);
                                  prefs.setString(
                                      "password", passwordController.text);
                                  prefs.setString("flname", body['flname']);
                                  prefs.setString("loginid", body['loginid'].toString());
                                  prefs.setString("orgid", body['orgid'].toString());
                                  setState(() {
                                    imagepath=body["profilephoto"];
                                  });
                                  Navigator.pushNamed(
                                    context,
                                    "/MainDashboard",
                                  );
                                } else {
                                  setState(() {
                                    _isLoading = false;
                                  });
                                }
                              });
                            }
                          });
                        }
                      })),
            ],
          ),
        ],
      ),
    );
  }

  String validateEmailparent(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else {
      return null;
    }
  }

  String validateMobile(String value) {
    if (mobileController.text.length == 0)
      return 'Enter your 10 digit mobile number';
    else if (mobileController.text.length < 10 ||
        mobileController.text.length > 10)
      return 'Enter your 10 digit mobile number';
    else {
      return null;
    }
  }

  String validateMobileparent(String value) {
    if (mobileController.text.length == 0)
      return 'Enter your 10 digit mobile number';
    else if (mobileController.text.length < 10 ||
        mobileController.text.length > 10)
      return 'Enter your 10 digit mobile number';
    else {
      return null;
    }
  }
}
