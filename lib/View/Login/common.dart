import 'package:matrimony/CSS/textcss.dart';
import 'package:matrimony/CSS/Colors.dart';
import 'package:flutter/material.dart';

import '../Config/global.dart';

class EpnImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AssetImage epnImg = AssetImage('assets/images/logo/edupluscampus.png');
    // Image imag = Image(
    //   image: epnImg,
    //   width: screenWidth,
    // );
    // return Container(
    //   child: imag,
    // );

    // IMAGE ON FIRST PAGE - ONBOARD
    // return Container(
    //     child: Image(
    //         width: screenWidth,
    //         image: AssetImage('assets/images/logo/edupluscampus.png')));
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w300),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Text(
              'TO',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w300),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Text(
              'MATRIMONY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool> onWillPop(BuildContext context, {Function() onWillPop}) async {
  return true;
}

showProgress(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Center(
            child: CircularProgressIndicator(
                //backgroundColor: whiteColor,
                valueColor: AlwaysStoppedAnimation<Color>(themeColorYellow)),
          ),
        );
      });
}
