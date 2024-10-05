import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
    {required double fontSize,
      required String fontFamily,
      required FontWeight fontWeight,
      required Color color,
      TextDecoration? textDecoration}) {
  if (textDecoration != null) {
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
        decoration: textDecoration);
  } else {
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight);
  }
}

TextStyle getBanglaGradientTextStyle(double fontSize, FontWeight fontWeight,
    Color color, TextDecoration decoration) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: fontWeight,
      textDecoration: decoration,
      color: color);
}

// regular style11
TextStyle getRegularStyle11(
    {double fontSize = FontSize.s11, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.regular,
      color: color);
}

// regular style11
TextStyle getRegularStyle12(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.regular,
      color: color);
}

// regular style13
TextStyle getRegularStyle13(
    {double fontSize = FontSize.s13, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.regular,
      color: color);
}

// regular style14
TextStyle getRegularStyle14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.regular,
      color: color,
      fontSize: fontSize);
}

// regular style15
TextStyle getRegularStyle15(
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.regular,
      color: color);
}

// bold text style12
TextStyle getBoldStyle12(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style13
TextStyle getBoldStyle13(
    {double fontSize = FontSize.s13,
      required Color color,
      TextDecoration? textDecoration}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color,
      textDecoration: textDecoration ?? textDecoration);
}

// bold text style14
TextStyle getBoldStyle14(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style16
TextStyle getBoldStyle16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style15
TextStyle getBoldStyle15(
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style15
TextStyle getBoldStyle17(
    {double fontSize = FontSize.s17, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

TextStyle getBoldStyle18(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style19
TextStyle getBoldStyle19(
    {double fontSize = FontSize.s19, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style 20
TextStyle getBoldStyle20(
    {double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// bold text style21
TextStyle getBoldStyle21(
    {double fontSize = FontSize.s21, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      color: color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.semiBold,
      color: color);
}

// medium text style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      fontWeight: FontWeightManager.medium,
      color: color);
}
