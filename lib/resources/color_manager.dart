import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/values_manager.dart';

class ColorManager {
  static Color bluePrimary = HexColor.fromHexColor('#4A43EC');
  static Color blueSecondary = HexColor.fromHexColor('#5669FF');
  static Color buttonBlue = HexColor.fromHexColor('#3D56F0');
  static Color black = HexColor.fromHexColor('#000000');
   static Color boldText = HexColor.fromHexColor('#120D26');
  static Color smallText = HexColor.fromHexColor('#747688');
  static Color iconText = HexColor.fromHexColor('#767676');
  static Color text = HexColor.fromHexColor('#000000');
  static Color white = HexColor.fromHexColor('#ffffff');
  static Color textBoxColor = HexColor.fromHexColor('#E4DFDF');
  static Color error = HexColor.fromHexColor('#e61f34');
  static Color placeHolderText = HexColor.fromHexColor('#747688');
   static Color darker = HexColor.fromHexColor('#818991');
   static Color textColor = HexColor.fromHexColor('#9D9898');
}

extension HexColor on Color {
  static Color fromHexColor(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
