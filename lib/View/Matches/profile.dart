import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/CSS/textcss.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => new _Profile();
}

class _Profile extends State<Profile> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //   appBar: new AppBar(
    //     automaticallyImplyLeading: false,
    //     excludeHeaderSemantics: true,
    //     title: new Text(
    //       "Profile",
    //       style: TextStyle(
    //         color: Colors.white,
    //         fontFamily: 'Roboto',
    //         fontSize: 20,
    //         fontWeight: FontWeight.w500,
    //       ),
    //     ),
    //     backgroundColor: login_header_color,
    //   ),
    //   body: new Container(
    //     child: Text("data"),
    //   ),
    // );

    List<int> list = [1, 2, 3, 4, 5];

    ListView _buildListView() {
      return ListView.builder(
        itemBuilder: null,
        itemCount: 10,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: login_header_color,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            // borderOnForeground: true,
            color: Colors.white,
            clipBehavior: Clip.antiAlias,
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange[300],
                    Colors.orange[400],
                    Colors.orange[500],
                  ], // red to yellow
                  // tileMode:
                  //     TileMode.mirror, // repeats the gradient over the canvas
                ),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                        'https://vierp-test.s3.ap-south-1.amazonaws.com/cloud/studentprofile/icard/photo/119C0057photo.jpg',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 00.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Pratik Pravin Shitre",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "M97",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                              child: InkWell(
                                child: Text(
                                  "EDIT",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                                onTap: () {
                                  print("EDIT PROFILE");
                                  // Navigator.pushNamed(
                                  //   context,
                                  //   "/MainDashboard",
                                  // );
                                },
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                              child: InkWell(
                                child: Text(
                                  "DE-ACTIVE ACCOUNT",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                                onTap: () {
                                  print("Deactive Account ");
                                  // Navigator.pushNamed(
                                  //   context,
                                  //   "/MainDashboard",
                                  // );
                                },
                              ),
                            ),
                          ],
                        )

                        // Container(
                        //   padding: EdgeInsets.fromLTRB(10.0, 0.0, 00.0, 0.0),
                        //   child: Text("data"),
                        // ),
                        // Container(
                        //   padding: EdgeInsets.fromLTRB(10.0, 0.0, 00.0, 0.0),
                        //   child: Text("data"),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            borderOnForeground: true,
            shadowColor: Colors.white24,
            elevation: 18.0,
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    red_color,
                    red_color,
                    // yellow_orange_color,
                  ], // red to yellow
                  tileMode:
                      TileMode.mirror, // repeats the gradient over the canvas
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Icon(
                            FontAwesomeIcons.mobileAlt,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          // Padding(
                          //   padding: EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 0.0),
                          //   child: Icon(
                          //     FontAwesomeIcons.ban,
                          //     color: Colors.red,
                          //     size: 30.0,
                          //   ),
                          // ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'For Better Responce,',
                              style: txtStyle(
                                16,
                                Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Go Premium.',
                              style: txtStyle(
                                16,
                                Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: InkWell(
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "UPGRADE PLAN",
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
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit Preferences',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Verify Profile',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chat',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upgrade Plan',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Setting',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Help & Support',
                  style: TextStyle(
                    color: blue_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleRight,
                  color: blue_color,
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
