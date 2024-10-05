import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyTheme extends GetxController {
  final _isDark = false.obs;
  get themeValue => _isDark;

  MyTheme._();
  static final instance = MyTheme._();

  ThemeMode getCurrentTheme() {
    return _isDark.value ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark.value = !_isDark.value;

    update();
    if (themeValue == true) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}