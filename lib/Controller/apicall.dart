import 'dart:convert';
import 'package:matrimony/CSS/common_ui.dart';
import 'package:matrimony/Controller/commonapicall.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:matrimony/View/Config/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class APICall {
  static Future<String> returnAPI(String linkname, BuildContext context,
      [Map<String, dynamic> params]) async {
        
      print("URL PRINT");
      print(MyApiCall.myApiCall[linkname]);
      return callAPI(params, MyApiCall.myApiCall[linkname], context);
  }

  static Future<String> callAPI(
      Map<String, dynamic> params, String url, BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uid = prefs.getString("loginid");
    orgid = prefs.getString("orgid");
    //accessToken = prefs.getString("token");
   print(uid);
   print(orgid);
    print("URL VALUE :: $url");
    var headerValue = {
      "Accept": "application/json",
      //"EPS-token": accessToken,
      "EPS-loginid": uid,
      "router-path": "/app-link",
      "EPS-orgid":orgid,
    };
    var response;
    try {
      response =
          await http.post(url, headers: headerValue, body: json.encode(params));
      var body = json.decode(response.body);
      print("body of ${url}");
      

      // debugPrint(body, wrapWidth: 1024);

      final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
      pattern.allMatches(response.body.toString()).forEach((match) => print(match.group(0)));
      return response.body;
    } catch (E) {
      toastFunctioncolor(context, "Something Went Wrong",Colors.black);
      return "Something Went Wrong";
    }
  }
}