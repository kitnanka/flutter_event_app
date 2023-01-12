import 'package:flutter/material.dart';

class ColorManager {
  static Color bluePrimary = HexColor.fromHexColor('#4A43EC');
  static Color blueSecondary = HexColor.fromHexColor('#5669FF');
  static Color buttonBlue = HexColor.fromHexColor('#3D56F0');
  static Color black = HexColor.fromHexColor('#000000');
   static Color boldText = HexColor.fromHexColor('#120D26');
  static Color smallText = HexColor.fromHexColor('#747688');
  static Color iconText = HexColor.fromHexColor('#767676');
  static Color text = HexColor.fromHexColor('#000000');
  static Color grey2 = HexColor.fromHexColor('#797979');
  static Color white = HexColor.fromHexColor('#ffffff');
  static Color error = HexColor.fromHexColor('#e61f34');
  static Color wisteria = HexColor.fromHexColor('#B8A3D3');
   static Color frenchPink = HexColor.fromHexColor('#FF70A6');
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
