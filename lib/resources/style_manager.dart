
import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
    fontSize: fontSize,
  );
}

TextStyle getRegularStyle({double fontSize = FontSize.s12, @required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.regular,
    color,
  );
}

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, @required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.light,
    color,
  );
}

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, @required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.bold,
    color,
  );
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, @required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.semiBold,
    color,
  );
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, @required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.medium,
    color,
  );
}
