// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quick_mart/app/resources/styles/font_manager.dart';
import 'package:quick_mart/app/resources/widgets/quick_mart_logo.dart';
import 'package:quick_mart/core/theme/theme_controller.dart';
import '../constants/asset_constants.dart';
import '../styles/bangla_style_manager.dart';
import '../styles/color_manager.dart';
import '../styles/english_style_manager.dart';
import 'localised_text.dart';

class SliderWidget extends StatelessWidget {
  String image, title, description;
  ThemeController themeController;
  //Constructor created
  SliderWidget({super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.themeController
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnboardingImage(image: image, theme:themeController),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
          child: LocalisedText(
            textAlignment: TextAlign.center,
            text: title,
            bnStyle: getBoldStyle21(
                fontSize: FontSize.s24,
                color: themeController.isDarkTheme ?
                ColorManager.primaryWhite :
                ColorManager.blackMain
            ),
            enStyle: getSemiBoldStyleEn24(
                fontSize: FontSize.s24,
                color: themeController.isDarkTheme ?
                ColorManager.primaryWhite :
                ColorManager.blackMain
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal:24),
          padding: const EdgeInsets.only(top: 24),
          child: LocalisedText(
            text: description.tr,
            textAlignment: TextAlign.center,
            bnStyle: getRegularStyle14(
                fontSize: FontSize.s14,
                color: themeController.isDarkTheme ?
                ColorManager.primaryWhite : ColorManager.lightGrey
            ),
            enStyle: getRegularStyleEn14(
                fontSize: FontSize.s14,
                color: themeController.isDarkTheme ?
                ColorManager.primaryWhite: ColorManager.lightGrey
            ),
          ),
        ),
      ],
    );
  }
}
class OnboardingImage extends StatelessWidget {
  final String image;
  ThemeController theme;
  OnboardingImage({super.key, required this.image,required this.theme});
                          
  @override
  Widget build(BuildContext context) {
    return  Container(
      //height: Get.height/2.1,
      margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical:20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: theme.isDarkTheme? ColorManager.cyan50 : ColorManager.cyanLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AssetConstants.logo,height: 20),
                        SizedBox(
                          height: 28,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("uickMart",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: theme.isDarkTheme? ColorManager.primaryWhite: ColorManager.blackMain,
                                      height: 0.9, // Reduce this to bring texts closer=
                                      fontSize: 18
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.only(right: 18),
                child: Text(
                  'Skip for now',
                  style: TextStyle(
                    color: ColorManager.cyanDeep,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                    letterSpacing: 0.07,
                  ),
                ),)

            ],
          ),
          //const SizedBox(height: 46),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}