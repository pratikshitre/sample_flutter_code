import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortlistesProfiles extends StatefulWidget {
  @override
  _ShortlistesProfiles createState() => new _ShortlistesProfiles();
}

class _ShortlistesProfiles extends State<ShortlistesProfiles>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: profileListView(),
    );
  }

  ListView profileListView() {
    return ListView(
      children: [
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        profileCard(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget profileCard() {
    return InkWell(
      child: Card(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        // borderOnForeground: true,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // Colors.white,
                // Colors.white,
                Colors.orange[200],
                Colors.orange[200],
              ], // red to yellow
              // tileMode:
              //     TileMode.mirror, // repeats the gradient over the canvas
            ),
          ),
          child: Column(
            children: [
              Row(
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
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "M97, 28 Years, 5 Ft 9 Inch,",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Never Married, ",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "BE, Computer Engineer,",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Pune, Maharashtra, India",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),

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
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: InkWell(
                      child: Text(
                        "IGNORE",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        print("IGNORE PROFILE");
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
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: InkWell(
                      child: Text(
                        "SHORTLIST",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        print("SHORTLIST Account ");
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
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: InkWell(
                      child: Text(
                        "SEND INTERESTE ACCOUNT",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        print("SEND INTERESTE Account ");
                        // Navigator.pushNamed(
                        //   context,
                        //   "/MainDashboard",
                        // );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        print("PROFILE DETAILED VIEW");
        Navigator.pushNamed(
          context,
          "/ProfilFullView",
        );
      },
    );
  }
}
