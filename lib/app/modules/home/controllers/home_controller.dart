import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/theme_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  //final ThemeController themeController = Get.find();
  final ThemeController themeController = Get.find<ThemeController>();

  void toggleTheme() {
    themeController.toggleTheme();
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  // initializing with the current theme of the device
  Rx<ThemeMode> currentTheme = ThemeMode.system.obs;

  // function to switch between themes
  void switchTheme() {
    currentTheme.value = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
  }
  void increment() => count.value++;
}
