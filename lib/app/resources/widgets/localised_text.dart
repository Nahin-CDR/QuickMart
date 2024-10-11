/*
this widget is used for multilangual text
Parameter:
- bnStyle is for bengali language
- enStyle is for bengali language
- text is for widget title coming from localisation
- textAlignment is for alignment of text
*/
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/color_manager.dart';
import 'gradient_text.dart';

class LocalisedText extends StatelessWidget {
  final String text;
  final TextStyle? bnStyle;
  final TextStyle? enStyle;
  final TextAlign? textAlignment;
  final bool? isGradientText;
  const LocalisedText({
    super.key,
    this.isGradientText,
    required this.text,
    this.bnStyle,
    this.enStyle, this.textAlignment,
  });

  @override
  Widget build(BuildContext context) {
    if(isGradientText == true){
      return  GradientText(
          text.tr,
          style: Get.locale?.languageCode.toString() == 'en'? enStyle: bnStyle,
          gradient: LinearGradient(
              colors: [
                ColorManager.primaryPurple522B79,
                ColorManager.primaryRedED3284
              ]
          )
      );
    }else{
      return Text(
        text.tr,textAlign: textAlignment ?? TextAlign.start,
        style: Get.locale?.languageCode.toString() == 'en'? enStyle: bnStyle,
      );
    }
  }
}
