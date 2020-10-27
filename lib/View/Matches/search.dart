import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/View/Matches/Search/basicSearch.dart';
import 'package:matrimony/View/Matches/Search/profileIdSearch.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => new _Search();
}

class _Search extends State<Search> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: new Text(
            "Search",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: login_header_color,
          bottom: new TabBar(
            //isScrollable: true,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorWeight: 2.0,
            tabs: [
              new Tab(text: "Basic Search"),
              new Tab(text: "Profile ID Search"),
            ],
          ),
        ),
        body: new TabBarView(children: [
          new BasicSearch(),
          new ProfilIdSearch(),
        ]),
      ),
    );

    return tabController;
  }
}
