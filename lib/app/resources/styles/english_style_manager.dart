import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_manager.dart';

TextStyle getEnglishTextStyle({required double fontSize,required FontWeight fontWeight,
  required Color color,TextDecoration? textDecoration}) {
  if(textDecoration != null){
    return GoogleFonts.inter(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        decoration: textDecoration
    );
  }else{
    return GoogleFonts.inter(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
    );
  }

}

TextStyle getEnglishTextStylePlusJakarta({required double fontSize,required FontWeight fontWeight,
  required Color color,TextDecoration? textDecoration,double? height,double? letterSpacing}) {
  if(height != null && letterSpacing != null){
    return GoogleFonts.plusJakartaSans(
        height: height,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
    );
  }
  return GoogleFonts.plusJakartaSans(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
    );
}

TextStyle getEnglishGradientTextStyle(double fontSize, FontWeight fontWeight, Color color, TextDecoration decoration) {
  return GoogleFonts.inter(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration
  );
}

TextStyle getUnderlinedTextStyle( {required Color color, required double fontSize, required FontWeight fontWeight} ) {
  return GoogleFonts.inter(
      decoration: TextDecoration.underline,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight
  );
}

/// regular style
TextStyle getRegularStyleEn10({double fontSize = FontSize.s10, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color
  );
}

TextStyle getRegularStyleEn12({double fontSize = FontSize.s12, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight:FontWeightManager.regular,
      color: color
  );
}
TextStyle getRegularStyleEn13({double fontSize = FontSize.s13, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color
  );
}

TextStyle getRegularStyleEn14({double fontSize = FontSize.s14, required Color color}) {
  return getEnglishTextStylePlusJakarta(
      //height: .9,
      letterSpacing: 0.07,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color
  );
}

TextStyle getSemiBoldStyleEn14PlusJakarta({double fontSize = FontSize.s14, required Color color}) {
  return getEnglishTextStylePlusJakarta(
    //height: .9,
      letterSpacing: 0.07,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getBoldStyleEnPlusJakarta({double fontSize = FontSize.s14, required Color color}) {
  return getEnglishTextStylePlusJakarta(
    //height: .9,
      letterSpacing: 0.07,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color
  );
}


TextStyle getSemiBoldStyleEn16({double fontSize = FontSize.s16, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getRegularStyleEn16({double fontSize = FontSize.s16, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color
  );
}

TextStyle getBoldStyleJakartaEn16({double fontSize = FontSize.s16, required Color color}) {
  return getEnglishTextStylePlusJakarta(
    //height: .9,
      letterSpacing: 0.07,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color
  );
}

/// light text style

TextStyle getLightStyleEn({double fontSize = FontSize.s12, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
      color: color
  );
}

/// medium text style
TextStyle getMediumStyleEn10({double fontSize = FontSize.s10, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color
  );
}

TextStyle getMediumStyleEn11({double fontSize = FontSize.s11, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color
  );
}


TextStyle getRegularStyleEn11({double fontSize = FontSize.s11, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color
  );
}

TextStyle getMediumStyleEn12({double fontSize = FontSize.s12, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color
  );
}

TextStyle getMediumStyleEn13({double fontSize = FontSize.s13, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color
  );
}

/// semi bold text style

TextStyle getSemiBoldStyleEn11({double fontSize = FontSize.s11, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getSemiBoldStyle13({double fontSize = FontSize.s13, required Color color,TextDecoration? textDecoration}) {
  /// if text decoration is provided
  /// then it will serve text decoration
  /// otherwise it will serve null
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color,
      textDecoration:  textDecoration ?? textDecoration
  );
}

TextStyle getSemiBoldStyleEn13({double fontSize = FontSize.s13, required Color color,TextDecoration? textDecoration}) {
  /// if text decoration is provided
  /// then it will serve text decoration
  /// otherwise it will serve null
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color,
      textDecoration:  textDecoration ?? textDecoration
  );
}


TextStyle getSemiBoldStyleEn12({double fontSize = FontSize.s12, required Color color,TextDecoration? textDecoration}) {
  /// if text decoration is provided
  /// then it will serve text decoration
  /// otherwise it will serve null
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color,
      textDecoration:  textDecoration ?? textDecoration
  );
}

TextStyle getSemiBoldStyleEn14({double fontSize = FontSize.s14, required Color color}) {
  return getEnglishTextStyle(
      fontSize:fontSize,
      fontWeight:  FontWeightManager.semiBold,
      color: color
  );
}


TextStyle getSemiBoldStyleEn15({double fontSize = FontSize.s15, required Color color}) {
  return getEnglishTextStyle(
      fontSize:fontSize,
      fontWeight:FontWeightManager.semiBold,
      color: color
  );
}
TextStyle getSemiBoldStyleEn17({double fontSize = FontSize.s17, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getSemiBoldStyleEn18({double fontSize = FontSize.s18, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getSemiBoldStyleEn19({double fontSize = FontSize.s19, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getSemiBoldStyleEn20({double fontSize = FontSize.s20, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}


TextStyle getSemiBoldStyleEn22({double fontSize = FontSize.s22, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

TextStyle getSemiBoldStyleEn24({double fontSize = FontSize.s22, required Color color}) {
  return getEnglishTextStylePlusJakarta(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color
  );
}

/// bold text style

TextStyle getBoldStyleEn({double fontSize = FontSize.s12, required Color color}) {
  return getEnglishTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color
  );
}
