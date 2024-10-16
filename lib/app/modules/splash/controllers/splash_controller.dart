import 'dart:async';
import 'package:get/get.dart';
import 'package:quick_mart/app/routes/app_pages.dart';
import 'package:quick_mart/core/theme/theme_controller.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final ThemeController themeController = Get.find<ThemeController>();
  var progressValue = 0.0.obs;

  @override
  void onInit() {
    updateProgress();
    super.onInit();
  }

  void updateProgress(){
    const oneSecond = Duration(seconds: 1);
    Timer.periodic(oneSecond, (Timer timer){
      if(progressValue.value < 1) {
        progressValue.value += 0.5;
      } else {
        timer.cancel();
        Get.offAllNamed(
          Routes.ONBOARD
        );
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
