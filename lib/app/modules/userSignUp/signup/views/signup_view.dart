import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_mart/app/resources/styles/english_style_manager.dart';
import 'package:quick_mart/app/resources/widgets/custom_input_field.dart';
import 'package:quick_mart/app/resources/widgets/field_title.dart';
import 'package:quick_mart/app/resources/widgets/localised_text.dart';
import 'package:quick_mart/app/resources/widgets/quick_mart_logo.dart';
import 'package:quick_mart/app/resources/widgets/universal_button.dart';
import '../../../../resources/styles/bangla_style_manager.dart';
import '../../../../resources/styles/color_manager.dart';
import '../../../../resources/styles/font_manager.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
            child: Column(
              children: [
                // app logo
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        quickMartLogo(height: 40.8, logoHeight:24),
                      ],
                    )
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  alignment: Alignment.centerLeft,
                  child: LocalisedText(
                      text: 'signup',
                    bnStyle: getBoldStyle12(
                        fontSize: FontSize.s24,
                        color: Get.isDarkMode ?
                        ColorManager.primaryWhite: ColorManager.blackMain
                    ),
                    enStyle: getBoldStyleEn(
                        fontSize: FontSize.s14,
                        color: Get.isDarkMode ?
                        ColorManager.primaryWhite: ColorManager.blackMain
                    ),

                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8,bottom: 32),
                  child: Row(
                    children: [
                      LocalisedText(
                        text: 'have_an_account',
                        //textAlignment: TextAlign.center,
                        bnStyle: getRegularStyle14(
                            fontSize: FontSize.s14,
                            color: Get.isDarkMode ?
                            ColorManager.primaryWhite : ColorManager.lightGrey
                        ),
                        enStyle: getRegularStyleEn14(
                            fontSize: FontSize.s14,
                            color: Get.isDarkMode ?
                            ColorManager.primaryWhite: ColorManager.lightGrey
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: LocalisedText(
                            text: 'login',
                            //textAlignment: TextAlign.center,
                            bnStyle: getRegularStyle14(
                                fontSize: FontSize.s14,
                                color: ColorManager.cyanDeep
                            ),
                            enStyle: getRegularStyleEn14(
                                fontSize: FontSize.s14,
                                color: ColorManager.cyanDeep
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const FieldTitleWithStar(fieldTitle: 'email', isRequired: true),
                const SizedBox(height: 8),
                CustomInputField(
                  hintText: 'example@gmail.com',
                  focusedBorderColor: ColorManager.cyanDeep,
                  inactiveBorderColor: ColorManager.lightGrey,
                  onChanged: (v){},
                    controller: controller.emailController,
                    isEnabled:true
                ),
                UniversalButton(
                    onPress: (){},
                    buttonWidth:Get.width,
                    backgroundColor: ColorManager.blackMain,
                    buttonText: 'create_account'
                ),
                UniversalButton(
                    isLoginWithGoogle: true,
                    onPress: (){},
                    buttonWidth:Get.width,
                    backgroundColor: ColorManager.blackMain,
                    buttonText: 'signup_with_google'
                )
              ],
            ),
          ),
        )
    );
  }
}
