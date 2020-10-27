import 'package:matrimony/View/Config/global.dart';
import 'package:flutter/material.dart';

double defaultScreenWidth = 400.0;
double defaultScreenHeight = 810.0;

TextStyle txtStyle(double size, var colorValue, {var fontWeight}) {
  var scaleWidth = 0.0;
  if (screenWidth > 400)
    scaleWidth = screenWidth / defaultScreenWidth;
  else
    scaleWidth = screenWidth / (screenWidth * 0.9);
  if (fontWeight != null) {
    return TextStyle(
      inherit: true,
      fontSize: (size * scaleWidth) / textScaleFactors,
      fontFamily: "Poppins",
      color: colorValue,
      fontWeight: fontWeight,
    );
  } else {
    return TextStyle(
      inherit: true,
      fontSize: (size * scaleWidth) / textScaleFactors,
      fontFamily: "Poppins",
      color: colorValue,
    );
  }
}

double setFontSize(double fontSize) {
  return setWidth(fontSize) / textScaleFactors;
}

double setWidth(double widthSize) {
  return widthSize * (screenWidth / defaultScreenWidth);
}

double setHeight(double heightSize) {
  return heightSize * (screenHeight / defaultScreenHeight);
}

ShapeBorder cardBorder() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(30),
    ),
  );
}

