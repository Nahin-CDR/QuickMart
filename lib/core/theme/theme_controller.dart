import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


// Theme Controller
class ThemeController extends GetxController {
  final _isDarkTheme = false.obs;
  final GetStorage _storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // Load saved theme preference from storage
    _isDarkTheme.value = _storage.read('isDarkTheme') ?? false;
  }

  bool get isDarkTheme => _isDarkTheme.value;

  // Fetches the theme mode based on the saved preference
  ThemeMode getThemeMode() {
    return isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme() {
    _isDarkTheme.value = !_isDarkTheme.value;
    _storage.write('isDarkTheme', _isDarkTheme.value); // Save theme preference
    Get.changeThemeMode(_isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }
}




