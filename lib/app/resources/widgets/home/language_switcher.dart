import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget languageSwitcher(BuildContext context) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
    leading: const Icon(Icons.language_rounded, color: Colors.teal),
    title: Text(
      'Language'.tr,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
    trailing: Switch(
      value: Get.locale?.languageCode == 'bn',
      activeColor: Colors.teal,
      onChanged: (bool value) {
        if (value) {
          Get.updateLocale(const Locale('bn', 'BD'));
        } else {
          Get.updateLocale(const Locale('en', 'US'));
        }
      },
    ),
  );
}