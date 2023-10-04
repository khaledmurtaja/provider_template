import 'package:flutter/cupertino.dart';

double getMediaQueryHeight(
    {required BuildContext context, required num value}) {
  var size = MediaQuery.of(context).size;
  //figma height
  double xdHeight = 781;
  double percentage = value / xdHeight;
  return size.height * percentage;
}

double getMediaQueryWidth({required BuildContext context, required num value}) {
  var size = MediaQuery.of(context).size;
  //figma width
  double xdWidth = 360;
  double percentage = value / xdWidth;

  return size.width * percentage;
}