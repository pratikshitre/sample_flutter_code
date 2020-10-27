import 'package:flutter/material.dart';
import 'package:matrimony/CSS/textcss.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';

/*---------------------- BASE URL START ----------------------*/
const String url = 'http://192.168.43.199:8080/';
/*---------------------- BASE URL END ----------------------*/


/*---------------------- GLOBAL VARIABLES START ----------------------*/
int drawer = 0;
String username='';
String imagepath='';
String avatar = "NA";
String learnerFName = "NA";
String learnerLName = "NA";
String uid;
String orgid;
String passdata = '';
String userType = '';
/*---------------------- GLOBAL VARIABLES END ----------------------*/

/*---------------------- CSS VARIABLES START ----------------------*/
var screenWidth;
var screenHeight;
var textScaleFactors;
/*---------------------- CSS VARIABLES END ----------------------*/

initialise() {
  userType = '';
}




/*---------------------- BASIC SEARCH START ----------------------*/
var ageFrom;
var ageTo;
var heightFrom;
var heightTo;
var maritialStatus;
var smokingHabbits;
var drinkingHabbits;
var physicalStatus;
var diet;
var religion;
var cast;
var highestEducation;
var incomeFrom;
var incomeTo;
var city;
var state;
var country;
/*---------------------- BASIC SEARCH END ----------------------*/
