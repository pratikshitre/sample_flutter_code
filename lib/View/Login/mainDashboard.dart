import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/View/Matches/profile.dart';
import 'package:matrimony/View/Matches/search.dart';
import 'package:matrimony/View/Matches/matchesDashboard.dart';

class MainDashboard extends StatefulWidget {
  @override
  _MainDashboardState createState() => new _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard>
    with WidgetsBindingObserver {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    MatchesDashboard(),
    Search(),
    Profile(),
  ];

  var body;
  // var imageheader={"access_token":"93f65e080a295f876b1c5722a46aa2"};
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // dashboardMenuList=null;
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final tabController = new DefaultTabController(
    //   length: 8,
    //   child: new Scaffold(
    //     // appBar: new AppBar(
    //     //   title: new Text("These are tabs"),
    //     //   bottom: new TabBar(
    //     //       isScrollable: true,
    //     //       unselectedLabelColor: Colors.white.withOpacity(0.3),
    //     //       indicatorColor: Colors.white,
    //     //       indicatorWeight: 2.0,
    //     //       tabs: [
    //     //         new Tab(text: "Dashboard"),
    //     //         new Tab(text: "New Join"),
    //     //         new Tab(
    //     //           text: "Matches",
    //     //         ),
    //     //         new Tab(
    //     //           text: "Shortlisted",
    //     //         ),
    //     //         new Tab(
    //     //           text: "Interest Sent",
    //     //         ),
    //     //         new Tab(
    //     //           text: "Intereste Accepted",
    //     //         ),
    //     //         new Tab(
    //     //           text: "Interest Rejected",
    //     //         ),
    //     //         new Tab(
    //     //           text: "Viewed My Profile",
    //     //         )
    //     //       ]),
    //     // ),
    //     bottomNavigationBar: BottomNavigationBar(
    //       items: const <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             FontAwesomeIcons.users,
    //             size: 20,
    //           ),
    //           title: Text(
    //             'Match',
    //             style: TextStyle(
    //               fontSize: 16,
    //             ),
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             FontAwesomeIcons.search,
    //             size: 20,
    //           ),
    //           title: Text(
    //             'Search',
    //             style: TextStyle(
    //               fontSize: 16,
    //             ),
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             FontAwesomeIcons.solidUser,
    //             size: 20,
    //           ),
    //           title: Text(
    //             'Profile',
    //             style: TextStyle(
    //               fontSize: 16,
    //             ),
    //           ),
    //         ),
    //       ],
    //       currentIndex: _selectedIndex,
    //       selectedItemColor: login_header_color,
    //       onTap: _onItemTapped,
    //     ),
    //     body: Center(
    //       child: _widgetOptions.elementAt(_selectedIndex),
    //     ),
    //   ),
    // );

    return SafeArea(
      child: new Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.users,
                size: 20,
              ),
              title: Text(
                'Match',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.search,
                size: 20,
              ),
              title: Text(
                'Search',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidUser,
                size: 20,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: login_header_color,
          onTap: _onItemTapped,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
