import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:quick_mart/app/resources/constants/asset_constants.dart';
import 'package:quick_mart/core/theme/theme_controller.dart';
import '../model/slider_model.dart';

class OnboardController extends GetxController {
  
  ThemeController themeController = Get.find<ThemeController>();

  RxInt currentIndex = 0.obs;
  List<SliderModel> slides = [];
  final PageController pageController = PageController(initialPage: 0);


  List<SliderModel> getSlides() {
    List<SliderModel> slides = <SliderModel>[];
    SliderModel sliderModel = SliderModel();

    // Item 1
    sliderModel.setImage(AssetConstants.slider1);
    sliderModel.setTitle("slider_1_title");
    sliderModel.setDescription("slider_1_description");
    slides.add(sliderModel);


    //Item 2
    sliderModel = SliderModel();
    sliderModel.setImage(AssetConstants.slider2);
    sliderModel.setTitle("slider_2_title");
    sliderModel.setDescription("slider_2_description");
    slides.add(sliderModel);


    // Item 3
    sliderModel = SliderModel();
    sliderModel.setImage(AssetConstants.slider3);
    sliderModel.setTitle("slider_3_title");
    sliderModel.setDescription("slider_3_description");
    slides.add(sliderModel);

    return slides;
  }
  onPageChanged(int value) {
    currentIndex.value = value;
    update();
    if (kDebugMode) {
      print(currentIndex.value);
    }
    pageController.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }



  @override
  void onInit() {
    slides = getSlides();
    super.onInit();
  }

  @override
  void onReady() {
    if(kDebugMode) {
      print('OnboardController ready');
    }
    super.onReady();
  }

  @override
  void onClose() {
    if(kDebugMode) {
      print('OnboardController closed');
    }
    super.onClose();
  }

}
