import 'package:admin_panel_for_store/core/utils/app_fonts.dart';
import 'package:flutter/cupertino.dart';

TextStyle getTextStyle({
  required FontWeight fontWeight,
  required double fontSize,
  required Color fontColor,
  double? letter,
}) =>
    TextStyle(
      fontFamily: AppFontFamily.sfFontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: fontColor,
      letterSpacing: letter,
    );

TextStyle getBoldTextStyle({
  required double fontSize,
  required Color fontColor,
  double? letter,
}) =>
    getTextStyle(
      fontWeight: AppFontWeight.boldWeigth,
      fontSize: fontSize,
      fontColor: fontColor,
    );
TextStyle getRegularTextStyle({
  required double fontSize,
  required Color fontColor,
  double? letter,
}) =>
    getTextStyle(
      fontWeight: AppFontWeight.regularWeigth,
      fontSize: fontSize,
      fontColor: fontColor,
    );

TextStyle getSemiBoldTextStyle({
  required double fontSize,
  required Color fontColor,
  double? letter,
}) =>
    getTextStyle(
      fontWeight: AppFontWeight.semiBold,
      fontSize: fontSize,
      fontColor: fontColor,
    );
TextStyle getMediumTextStyle({
  required double fontSize,
  required Color fontColor,
  double? letter,
}) =>
    getTextStyle(
      fontWeight: AppFontWeight.medium,
      fontSize: fontSize,
      fontColor: fontColor,
    );
