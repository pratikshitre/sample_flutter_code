import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/CSS/textcss.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int photoIndex = 0;

  List<String> photos = [
    "https://vierp-test.s3.ap-south-1.amazonaws.com/cloud/studentprofile/icard/photo/11810601photo.jpg",
    "https://vierp-test.s3.ap-south-1.amazonaws.com/cloud/studentprofile/icard/photo/11810666photo.jpg",
    // "https://vierp-test.s3.ap-south-1.amazonaws.com/cloud/studentprofile/icard/photo/119C0057photo.jpg",
    "https://vierp-test.s3.ap-south-1.amazonaws.com/cloud/studentprofile/icard/photo/119M0064photo.jpg"
  ];
  // [
  //   'assets/burger1.jpg',
  //   'assets/burger2.jpg',
  //   'assets/burger3.jpg',
  //   'assets/burger4.jpg'
  // ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'M79',
          style: TextStyle(color: Colors.white),
          // textAlign: TextAlign.start,
        ),
        centerTitle: false,
        backgroundColor: login_header_color,
      ),
      body: ListView(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(25.0),
                        // borderRadius: BorderRadius.only(
                        //   bottomLeft: Radius.circular(125),
                        //   bottomRight: Radius.circular(125),
                        // ),
                        image: DecorationImage(
                          //image: AssetImage(photos[photoIndex]),
                          image: NetworkImage(photos[photoIndex]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 500.0,
                      width: 400.0,
                    ),
                    // Positioned(
                    //   // top: 465.0,
                    //   left: 25.0,
                    //   right: 25.0,
                    //   bottom: 65.0,
                    //   child: SelectedPhoto(
                    //     numberOfDots: photos.length,
                    //     photoIndex: photoIndex,
                    //   ),
                    // ),
                    Positioned(
                      left: 25.0,
                      right: 25.0,
                      bottom: 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(FontAwesomeIcons.arrowAltCircleLeft),
                            onPressed: _previousImage,
                            color: Colors.white,
                          ),
                          // RaisedButton(
                          //   child: Text('Prev'),
                          //   onPressed: _previousImage,
                          //   // elevation: 5.0,
                          //   color: login_header_color,
                          // ),
                          SizedBox(width: 10.0),
                          SelectedPhoto(
                            numberOfDots: photos.length,
                            photoIndex: photoIndex,
                          ),
                          SizedBox(width: 10.0),
                          IconButton(
                            icon: Icon(FontAwesomeIcons.arrowAltCircleRight),
                            onPressed: _nextImage,
                            color: Colors.white,
                          ),
                          // RaisedButton(
                          //   child: Icon(FontAwesomeIcons.arrowAltCircleLeft),
                          //   onPressed: _nextImage,
                          //   // elevation: 5.0,
                          //   color: login_header_color,
                          // ),
                        ],
                      ),
                    ),
                    // Positioned(
                    //     top: 405.0,
                    //     left: 5.0,
                    //     right: 350.0,
                    //     bottom: 25.0,
                    //     child: ClipRRect(
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //           gradient: LinearGradient(
                    //               colors: [Colors.green, Colors.blue]),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(50.0)),
                    //         ),
                    //         child: IconButton(
                    //           icon: Icon(
                    //             FontAwesomeIcons.solidUser,
                    //             color: Colors.green,
                    //           ),
                    //           onPressed: _previousImage,
                    //           splashRadius: 20.0,
                    //         ),
                    //       ),
                    //     )),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     RaisedButton(
              //       child: Text('Next'),
              //       onPressed: _nextImage,
              //       elevation: 5.0,
              //       color: Colors.green,
              //     ),
              //     SizedBox(width: 10.0),
              //     RaisedButton(
              //       child: Text('Prev'),
              //       onPressed: _previousImage,
              //       elevation: 5.0,
              //       color: Colors.blue,
              //     )
              //   ],
              // ),
              Card(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                borderOnForeground: true,
                shadowColor: Colors.white24,
                elevation: 18.0,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('Basic Information',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Name",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Pratik S",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Date Of Birth",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "17-01-1992",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Age",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "28 Years",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Day Of Birth",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Friday",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Birth Time",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "12:00 AM",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Height",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "5 Ft 9 Inch",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Maritial Status",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Never Married",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Mother Tongue",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Marathi",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Weight",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "50 Kgs",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Complexion",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Wheatish",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Body type",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Average",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Diet",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Eggetarian",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Physical Status",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Normal",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Blood Group",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "B negative",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Smoking Habbits",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "No",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Drinking Habbits",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Yes",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Current Live City",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "-",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Cityzen ",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "-",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                        ],
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('About Her/His',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "I am cool person, like a traveling chill with friends, watch movies, listning songs etc. Finding mutual understand partner " +
                                      "I am cool person, like a traveling chill with friends, watch movies, listning songs etc. Finding mutual understand partner. " +
                                      "I am cool person, like a traveling chill with friends, watch movies, listning songs etc. Finding mutual understand partner.",
                                  style: txtStyle(16, Colors.grey),
                                  maxLines: 30,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ],
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('Family Information',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Father Name",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Pravin Shitre",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Name Of Mother",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Seema Shitre",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Occupation Of Father",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Business Man",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Occupation Of Mother",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Housewife",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Family Status",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Middle Class",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Family Type",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Joint Family",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Family Values",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Orthodox",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Family Native Place",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Saswad",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Relative's : ",
                                style: txtStyle(16, Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Basale, Vinchu, Nangare, etc.",
                                style: txtStyle(16, Colors.grey),
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                maxLines: 3,
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Address : ",
                                style: txtStyle(16, Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Sr. No. 116, Flat No. B-11-A, Paramanavnath Park Housing Society, Shivtirtha Nagar, Paud Road, Kothrud, Pune - 411 038.",
                                  style: txtStyle(16, Colors.grey),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 10,
                                ),
                              ),
                            ],
                          ),
                          // Divider(),
                        ],
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('About My Family',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "I am cool person, like a traveling chill with friends, watch movies, listning songs etc. Finding mutual understand partner " +
                                      "I am cool person, like a traveling chill with friends, watch movies, listning songs etc. Finding mutual understand partner. " +
                                      "I am cool person, like a traveling chill with friends, watch movies, listning songs etc. Finding mutual understand partner.",
                                  style: txtStyle(16, Colors.grey),
                                  maxLines: 30,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ],
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('Contact Information',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Mobile No",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "8888861505",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Alt. Contact No.",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "8600616980",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Email",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "pshitre505@gmail.com",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                        ],
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
                      tileMode: TileMode
                          .mirror, // repeats the gradient over the canvas
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
                                color: Colors.blue,
                                size: 50.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 0.0),
                                child: Icon(
                                  FontAwesomeIcons.ban,
                                  color: Colors.red,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'To View Contact Details Become a PRIME member.',
                                style: txtStyle(
                                  16,
                                  Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              ),
                            ),
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
              Card(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                borderOnForeground: true,
                shadowColor: Colors.white24,
                elevation: 18.0,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('Religion Information',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Religion",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Hindu",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Cast",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Shimpi",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Sub Cast",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Namdev Shimpi",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Gothra",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "-",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                        ],
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('Professional Information',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Education",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "BE",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Education-In",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              //   width: setWidth(10),
                              // ),
                              Text(
                                "Computer Engineering",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider()
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Working With",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Private Sector",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Working As : ",
                                style: txtStyle(16, Colors.grey),
                              ),
                              // VerticalDivider(
                              //   color: Colors.black54,
                              // ),
                              Text(
                                "Software Developer",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Organization : ",
                                  style: txtStyle(16, Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 10,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Vishwakarma Global Education Services Pvt. Ltd.",
                                  style: txtStyle(16, Colors.grey),
                                  maxLines: 10,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Annual Income",
                                style: txtStyle(16, Colors.grey,
                                    fontWeight: FontWeight.bold),
                                maxLines: 10,
                                softWrap: false,
                                overflow: TextOverflow.fade,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "2000000 To 2500000 INR",
                                style: txtStyle(16, Colors.grey),
                              ),
                            ],
                          ),
                          // Divider(),
                        ],
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
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                      right: setHeight(15),
                      left: setHeight(15),
                      top: setHeight(10),
                      bottom: setHeight(15)),
                  child: Column(
                    children: <Widget>[
                      Text('Preference',
                          style: txtStyle(18, Colors.blue,
                              fontWeight: FontWeight.bold)
                          // TextStyle(
                          //   color: Colors.blue,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0,
                          // ),
                          ),
                      Divider(
                        color: Colors.blue,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Age",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "28 Years",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Height",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "5 Ft",
                                    style: txtStyle(16, Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.timesCircle,
                                  color: Colors.red,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Maritial Status",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Never Married",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mother Tongue",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Marathi, Hindi",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Physical Status",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Normal",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Diet",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Eggetarian",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Smoking",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "No",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Drinking",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "No",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Religion",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Hindu",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cast",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Shimpi",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sub Cast",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Namdev Shimpi",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Education",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "BE",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Education In",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Private Sector",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Age",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "28 Years",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Annual Income",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "2000000 To 2500000 INR",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Country",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "India",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "State",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Maharashtra",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "City",
                                    style: txtStyle(12, Colors.grey),
                                  ),
                                  Text(
                                    "Any",
                                    style: txtStyle(16, Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.green,
                                  size: 22.0,
                                )),
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
      ),
    ));
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
