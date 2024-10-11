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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
                height: Get.height / 1.8,
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
                        ),
                      );
                    })
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      controller.slides.length,
                          (index) => Obx(() {
                        return buildDot(index, context);
                      }),
                    ),
                  ),
                  TextButton(
                    child: LocalisedText(
                      text: 'next_title',
                      bnStyle: getBoldStyle13(color: ColorManager.inputField444444),
                      enStyle: getSemiBoldStyleEn14(color: ColorManager.inputField444444),
                    ),
                    onPressed: () {
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
                  )
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
      width: controller.currentIndex.value == index ? 16 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: controller.currentIndex.value == index ?
        ColorManager.primaryPurple522B79 : ColorManager.primaryPurpleDCD5E4,
      ),
    );
  }
}
