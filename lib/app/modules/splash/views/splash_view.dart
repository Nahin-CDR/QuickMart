

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quick_mart/app/resources/styles/color_manager.dart';
import 'package:quick_mart/app/resources/constants/asset_constants.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height/2+50,
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
                                  color: ColorManager.blackMain,
                                  height: 0.9, // Reduce this to bring texts closer=
                                  fontSize: 55)
                          ),
                          Text(
                              "Asia’s No 1 Ecommerce App",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.blackMain,
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
          ),
          SizedBox(
            height: Get.height/2-50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //const Align(
                    //alignment: Alignment.bottomCenter,
                    //child: Padding(
                      //padding: EdgeInsets.all(8.0),
                     // child: CircularProgressIndicator(),
                   // ),
                  //),
                  if(controller.progressValue.value < 1)
                    CircularProgressIndicator(
                      strokeWidth: 2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: ColorManager.cyanDeep,
                  ),
                  const SizedBox(height: 50)
                ],
              )
          ),

        ],
      )
    );
  }
}
