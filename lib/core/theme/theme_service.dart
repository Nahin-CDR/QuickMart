
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _getStorage = GetStorage();
  final storageKey = "isDarkMode";

  // Fetches the theme mode based on the saved preference
  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  // Checks if dark mode is saved in storage
  bool isSavedDarkMode() {
    return _getStorage.read(storageKey) ?? false;
  }

  // Saves the theme mode (dark or light) in storage
  void saveThemeMode(bool isDarkMode) {
    _getStorage.write(storageKey, isDarkMode);
  }

  // Toggles between light and dark theme
  void changeThemeMode() {
    bool isDarkMode = !isSavedDarkMode(); // Toggle the current mode
    Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    saveThemeMode(isDarkMode); // Save the updated mode
  }
}
