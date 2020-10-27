import 'package:flutter/material.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:matrimony/View/Matches/MatchResult/dashboard.dart';
import 'package:matrimony/View/Matches/MatchResult/matches.dart';
import 'package:matrimony/View/Matches/MatchResult/newJoin.dart';
import 'package:matrimony/View/Matches/MatchResult/shortlist.dart';
import 'package:matrimony/View/Matches/MatchResult/viewed.dart';

class MatchesDashboard extends StatefulWidget {
  @override
  _MatchesDashboardState createState() => _MatchesDashboardState();
}

class _MatchesDashboardState extends State<MatchesDashboard> {
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
      length: 9,
      child: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: new Text(
            "Matches",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',

              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: login_header_color,
          bottom: new TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorWeight: 2.0,
            tabs: [
              new Tab(text: "Dashboard"),
              new Tab(text: "New Join"),
              new Tab(text: "Matches"),
              new Tab(text: "Shortlisted"),
              new Tab(text: "Awaiting Your Responces"),
              new Tab(text: "Interest Sent"),
              new Tab(text: "Intereste Accepted"),
              new Tab(text: "Interest Rejected"),
              new Tab(text: "Viewed Profiles"),
            ],
          ),
        ),
        body: new TabBarView(children: [
          new Dashboard(),
          new NewJoin(),
          new Matches(),
          new ShortlistesProfiles(),
          new Center(child: new Text('Waiting Your Responce Tab', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
          new Center(child: new Text('Interest Send Tab', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
          new Center(child: new Text('Interest Accepted Tab', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
          new Center(child: new Text('Interest Rejected Tab', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
          new ViewedProfile(),
        ]),
      ),
    );

    return tabController;
  }
}
