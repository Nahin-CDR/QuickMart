
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/theme_controller.dart';

Widget themeSwitcher(BuildContext context,{required ThemeController themeController}) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
    leading: const Icon(Icons.phone_android_rounded, color: Colors.teal),
    title: Text(
      'Dark Theme'.tr,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
    trailing: Obx(() {
      return Switch(
        value: themeController.isDarkTheme,
        activeColor: Colors.teal,
        onChanged: (value) {
          themeController.toggleTheme();
        },
      );
    }),
  );
}