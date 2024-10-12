import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/theme/theme_controller.dart';
import '../constants/asset_constants.dart';
import '../styles/color_manager.dart';


Widget quickMartLogo({required ThemeController themeController,required double height}){
  return  SizedBox(
    height: height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetConstants.logo),
            SizedBox(
              height: 78,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("uickMart",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: themeController.isDarkTheme? ColorManager.primaryWhite: ColorManager.blackMain,
                          height: 0.9, // Reduce this to bring texts closer=
                          fontSize: 55)
                  ),
                  Text(
                      "Asia’s No 1 Ecommerce App",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: themeController.isDarkTheme? ColorManager.primaryWhite:ColorManager.blackMain,
                          height: 0.9
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}