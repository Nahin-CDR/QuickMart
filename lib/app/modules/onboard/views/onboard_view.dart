import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/styles/bangla_style_manager.dart';
import '../../../resources/styles/color_manager.dart';
import '../../../resources/styles/english_style_manager.dart';
import '../../../resources/widgets/localised_text.dart';
import '../../../resources/widgets/slider.dart';
import '../../../routes/app_pages.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({super.key});
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: controller.themeController.isDarkTheme? ColorManager.primaryBlack : ColorManager.primaryWhite,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
                height: Get.height / 1.4,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (value) => controller.onPageChanged(value),
                    itemCount: controller.slides.length,
                    controller: controller.pageController,
                    itemBuilder: (context, index) {
                      // Contents of Slider that we
                      // created in Modal Class
                      return SingleChildScrollView(
                        child: SliderWidget(
                          image: controller.slides[index].getImage()!,
                          title: controller.slides[index].getTitle()!,
                          description: controller.slides[index].getDescription()!,
                          themeController: controller.themeController,
                        ),
                      );
                    })
            ),
            // next button
            InkWell(
              onTap: () {
                if (kDebugMode) {
                  print(Get.locale?.languageCode.toString());
                }
                if (controller.currentIndex.value < controller.slides.length - 1) {
                  controller.currentIndex.value = controller.currentIndex.value + 1;
                  controller.onPageChanged(controller.currentIndex.value);
                } else {
                  if (kDebugMode) {
                    print('controller.currentIndex.value ${controller.currentIndex.value}');
                  }

                  if(controller.currentIndex.value == controller.slides.length - 1){
                    //in last index; go to landing screen from tab controller
                    Get.offNamed(Routes.HOME);
                  }
                }
              },
              child:  Container(
                margin: const EdgeInsets.only(top: 24),
                width: Get.width-40,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  color: controller.themeController.isDarkTheme ?
                  ColorManager.cyanDeep : ColorManager.blackMain,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment:Alignment.center,
                    padding: const EdgeInsets.only(left: 10,top: 5, bottom: 5),
                    decoration: ShapeDecoration(
                      color:controller.themeController.isDarkTheme ? ColorManager.cyan50 :ColorManager.cyanLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.slides.length,
                            (index) => Obx(() {
                          return buildDot(index, context);
                        }),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    // Another Container returned
    return Container(
      height: 6,
      width: controller.currentIndex.value == index ? 6 : 6,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: controller.currentIndex.value == index ?
        ColorManager.cyanDeep : ColorManager.dotGrey,
      ),
    );
  }
}
