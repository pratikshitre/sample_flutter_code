import 'package:flutter/material.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/View/Animation/FadeAnimation.dart';

import '../../CSS/textcss.dart';

class MyHeader extends StatefulWidget {
  final String image;
  final String textTop;
  final String textBottom;
  final double offset;
  const MyHeader(
      {Key key, this.image, this.textTop, this.textBottom, this.offset})
      : super(key: key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [login_header_color, login_header_color, login_header_color],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 130,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeAnimation(
                  1.3,
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: FadeAnimation(
                          1.4,
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: login_header_color,
                                  blurRadius: 20,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email or Phone number",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      InkWell(
                        child: Container(
                          child: FadeAnimation(
                            1.5,
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        onTap: () {
                          print("tapped on Forgot Password container");
                          Navigator.pushNamed(
                            context,
                            "/MainDashboard",
                          );
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FadeAnimation(
                        1.6,
                        InkWell(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: login_header_color,
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onTap: () {
                            print("tapped on Login container");
                            Navigator.pushNamed(
                              context,
                              "/MainDashboard",
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        child: Container(
                          child: FadeAnimation(
                            1.5,
                            Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        onTap: () {
                          print("tapped on Sign Up container");
                          Navigator.pushNamed(
                            context,
                            "/MainDashboard",
                          );
                        },
                      ),
                      // Container(
                      //   child: FadeAnimation(
                      //       1.7,
                      //       Text(
                      //         "Continue with social media",
                      //         style: TextStyle(color: Colors.grey),
                      //       )),
                      // ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Row(
                      //   children: <Widget>[
                      //     Expanded(
                      //       child: Container(
                      //         child: FadeAnimation(
                      //             1.8,
                      //             Container(
                      //               height: 50,
                      //               decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.circular(50),
                      //                   color: Colors.blue),
                      //               child: Center(
                      //                 child: Text(
                      //                   "Facebook",
                      //                   style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.bold),
                      //                 ),
                      //               ),
                      //             )),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 30,
                      //     ),
                      //     Expanded(
                      //       child: Container(
                      //         child: FadeAnimation(
                      //             1.9,
                      //             Container(
                      //               height: 50,
                      //               decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.circular(50),
                      //                   color: Colors.black),
                      //               child: Center(
                      //                 child: Text(
                      //                   "Github",
                      //                   style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.bold),
                      //                 ),
                      //               ),
                      //             )),
                      //       ),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 60, size.width / 2, size.height - 30);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
