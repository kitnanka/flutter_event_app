
import 'package:flutter/material.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/font_manager.dart';
import 'package:flutter_event_app/resources/style_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primaryColor: ColorManager.bluePrimary,
      primaryColorLight: ColorManager.bluePrimary,
      primaryColorDark: ColorManager.bluePrimary,
      disabledColor: ColorManager.text,
      accentColor: ColorManager.text,
      splashColor: ColorManager.bluePrimary,
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.text,
        elevation: AppSize.s4,
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.bluePrimary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.bluePrimary,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s16)),
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.text,
        buttonColor: ColorManager.bluePrimary,
        splashColor: ColorManager.bluePrimary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white),
          primary: ColorManager.bluePrimary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s14)),
        ),
      ),
      textTheme: TextTheme(
          headline1: getSemiBoldStyle(
              color: ColorManager.white, fontSize: FontSize.s22),
          subtitle1: getMediumStyle(
              color: ColorManager.white, fontSize: FontSize.s22, height: 1.7),
          subtitle2: getMediumStyle(
              color: Colors.white70, fontSize: FontSize.s14, height: 1.7),
          caption: getRegularStyle(
            color: ColorManager.smallText,
          ),
          bodyText1: getRegularStyle(color: ColorManager.text)),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(AppPadding.p8),
          hintStyle: getRegularStyle(color: ColorManager.text),
          labelStyle: getMediumStyle(color: ColorManager.text),
          errorStyle: getRegularStyle(color: ColorManager.error),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.text, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.bluePrimary, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.bluePrimary, width: AppSize.s2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          )));
}