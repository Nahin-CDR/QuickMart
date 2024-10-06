import 'package:get/get.dart';
import '../../../../core/theme/theme_controller.dart';
import '../controllers/onboard_controller.dart';

class OnboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardController>(
      () => OnboardController(),
    );
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
