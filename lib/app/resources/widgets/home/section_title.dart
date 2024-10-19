
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quick_mart/app/resources/styles/bangla_style_manager.dart';
import 'package:quick_mart/app/resources/styles/color_manager.dart';
import 'package:quick_mart/app/resources/styles/english_style_manager.dart';
import 'package:quick_mart/app/resources/widgets/localised_text.dart';
import '../../../../core/theme/theme_controller.dart';

Widget sectionTitle(String title,{required ThemeController theme}) {
  return LocalisedText(
    text: title,
    bnStyle: getBoldStyle16(
        color: theme.isDarkTheme ?
        ColorManager.primaryWhite : ColorManager.primaryBlack
    ),
    enStyle: getBoldStyleJakartaEn16(
        color: theme.isDarkTheme ?
        ColorManager.primaryWhite : ColorManager.primaryBlack
    ),
  );
}