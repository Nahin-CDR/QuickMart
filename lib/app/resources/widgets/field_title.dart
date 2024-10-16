
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/bangla_style_manager.dart';
import '../styles/color_manager.dart';
import '../styles/english_style_manager.dart';

class FieldTitleWithStar extends StatelessWidget {
  final String fieldTitle;
  final bool isRequired;
  const FieldTitleWithStar({
    required this.fieldTitle,
    super.key,
    required this.isRequired
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(
                style: Get.locale?.languageCode.toString() == 'en'?
                getMediumStyleEn12(
                 // fontSize: 16,
                  color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.blackMain,
                ):getBoldStyle13(
                  fontSize: 16,
                  color : Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.blackMain,
                ),
                text: fieldTitle.tr,
                children:  [
                  isRequired ? const TextSpan(text: '*', style: TextStyle(color: Colors.red)):
                  const TextSpan(text: '')
                ]
            )
        )
    );
  }
}