import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:matrimony/CSS/AppTheme.dart';
import 'package:matrimony/Controller/apicall.dart';
import 'package:matrimony/View/Login/common.dart';
import 'package:matrimony/View/Login/forgotpassword.dart';
import 'package:matrimony/View/Login/login.dart';
import 'package:matrimony/View/Login/mainDashboard.dart';
import 'package:matrimony/View/Login/tabview.dart';
import 'package:matrimony/View/Matches/Search/profileFullView.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:matrimony/View/Config/global.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/CSS/textcss.dart';

class MyAppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      //color: Colors.blue,
      theme: buildTheme(),
      // navigatorObservers: <NavigatorObserver>[observer],
      //home: new Splash(),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Splash(), // Default home route
        '/Login': (BuildContext context) => Login(),
        '/MainDashboard': (BuildContext context) => MainDashboard(),
        "/ForgotPassword": (BuildContext context) => Forgotpassword(),
        "/ProfilFullView": (BuildContext context) => MyHomePage(),
      },
    );
  }
}

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> with WidgetsBindingObserver {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen =
        (prefs.getBool('seen') == null) ? false : prefs.getBool('seen');

    prefs.setBool('seen', true);

    // String data;
    // var params = {
    // "uid": prefs.getString("username"),
    // "pass": prefs.getString("password"),
    // };
    // APICall.returnAPI("login", context, params).then((response) {
    // setState(() {
    //   data = response;
    // });
    // final body = json.decode(data);

    // if (body['msg'] == "200") {
    //   setState(() {
    //     imagepath = body['profilephoto'];
    //   });

    // print("alreay login.");
    // Navigator.pushNamed(
    //   context,
    //   "/MainDashboard",
    // );
    // } else {
    // Navigator.of(context).push(new MaterialPageRoute(
    //     builder: (context) => new Login(
    //           msg: body['msg'],
    //         )));

    Navigator.pushNamed(
      context,
      "/Login",
    );
    // }
    // });
    prefs.setBool('seen', true);
  }

  void checklogin() {}

  getRemoteConfig() async {}

  @override
  void initState() {
    super.initState();
    checkFirstSeen();
    // this.initDynamicLinks();
    WidgetsBinding.instance.addObserver(this);
    new Timer(new Duration(milliseconds: 20), () {
      var sWidth = MediaQuery.of(context).size.width;
      var sHeight = MediaQuery.of(context).size.height;
      textScaleFactors = MediaQuery.of(context).textScaleFactor;
      screenHeight = sHeight;
      screenWidth = sWidth;
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeights = MediaQuery.of(context).size.height;
    screenHeight = screenHeights;
    // GlobalAnalytics.sendAnalytics("AppLaunch");
    //checkAccessToken();
    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: Scaffold(
        backgroundColor: shadow_color,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            EpnImages(),
            // SizedBox(
            //   height: setHeight(10),
            // ),
            // CircularProgressIndicator(
            //   valueColor: new AlwaysStoppedAnimation<Color>(themeColorBlue),
            // ),
            // SizedBox(
            //   height: setHeight(30),
            // ),
          ],
        ),
      ),
    );
  }
}
