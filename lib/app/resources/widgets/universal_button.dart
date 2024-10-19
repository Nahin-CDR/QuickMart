import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quick_mart/app/resources/constants/asset_constants.dart';
import 'package:quick_mart/app/resources/styles/bangla_style_manager.dart';
import 'package:quick_mart/app/resources/styles/english_style_manager.dart';
import 'package:quick_mart/app/resources/widgets/localised_text.dart';
import '../styles/color_manager.dart';

class UniversalButton extends StatelessWidget {
  final Function onPress;
  final double buttonWidth;
  final bool? isLoginWithGoogle;
  final String? icon;
  final Color backgroundColor;
  final String buttonText;

  const UniversalButton({
    super.key,
    required this.onPress,
    required this.buttonWidth,
    this.icon,
    this.isLoginWithGoogle,  // Optional parameter
    required this.backgroundColor,
    required this.buttonText
  });

  @override
  Widget build(BuildContext context) {
    if (isLoginWithGoogle != null) {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: InkWell(
          onTap: () => onPress(),  // Corrected onPress call
          child: Container(
            width: buttonWidth,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: ShapeDecoration(
              color: Get.isDarkMode ? ColorManager.primaryBlack : ColorManager.primaryWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.lightGrey,
                  width: .8,
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LocalisedText(
                  text: buttonText,
                  enStyle: getEnglishTextStylePlusJakarta(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.blackMain,
                  ),
                  bnStyle: getSemiBoldStyle(
                    fontSize: 14,
                    color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.blackMain,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(AssetConstants.googleSvg),
                ),
              ],
            ),
          ),
        ),
      );
    } else if (icon != null) {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: InkWell(
          onTap: () => onPress(),  // Corrected onPress call
          child: Container(
            width: buttonWidth,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: ShapeDecoration(
              color: Get.isDarkMode ? ColorManager.cyanDeep : ColorManager.blackMain,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LocalisedText(
                  text: buttonText,
                  enStyle: getEnglishTextStylePlusJakarta(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.primaryWhite,
                  ),
                  bnStyle: getSemiBoldStyle(
                    fontSize: 14,
                    color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.primaryWhite,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(icon!),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: InkWell(
          onTap: () => onPress(),  // Corrected onPress call
          child: Container(
            width: buttonWidth,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: ShapeDecoration(
              color: Get.isDarkMode ? ColorManager.cyanDeep : ColorManager.blackMain,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LocalisedText(
                  text: buttonText,
                  enStyle: getEnglishTextStylePlusJakarta(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.primaryWhite,
                  ),
                  bnStyle: getSemiBoldStyle(
                    fontSize: 14,
                    color: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.primaryWhite,
                  ),
                ),
                if (icon != null)
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset(icon!),
                  )
              ],
            ),
          ),
        ),
      );
    }
  }
}

