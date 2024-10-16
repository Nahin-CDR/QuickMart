import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../constants/asset_constants.dart';
import '../styles/color_manager.dart';


Widget quickMartLogo({required double height,required double logoHeight}){
  return  SizedBox(
    height: height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetConstants.logo,height: logoHeight),
            SizedBox(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("uickMart",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Get.isDarkMode ? ColorManager.primaryWhite: ColorManager.blackMain,
                          height: 0.9, // Reduce this to bring texts closer=
                          fontSize: 24
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}