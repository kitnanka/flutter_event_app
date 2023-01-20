
import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color, double height) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
    fontSize: fontSize,
    height: height
  );
}

TextStyle getRegularStyle({double fontSize = FontSize.s12, @required Color color, double height}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.regular,
    color,
    height
  );
}

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, @required Color color, double height}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.light,
    color,
    height
  );
}

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, @required Color color, double height}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.bold,
    color,
    height
  );
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, @required Color color, double height}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.semiBold,
    color,
    height
  );
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, @required Color color, double height}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.medium,
    color,
    height
  );
}
