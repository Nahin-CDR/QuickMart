import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_mart/core/theme/custom_theme.dart';
import 'package:quick_mart/core/theme/theme_controller.dart';
import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize GetStorage for theme persistence
  await GetStorage.init();
  // Initialize ThemeController globally
  Get.put(ThemeController());

  runApp(QuickMart());
}

class QuickMart extends StatelessWidget {
  QuickMart({super.key});

  // Get the ThemeController instance
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    // Use Obx to rebuild the UI when the theme changes
    return Obx(() {
      return GetMaterialApp(
        title: "QuickMart",
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.lightTheme, // Your custom light theme
        darkTheme: CustomTheme.darkTheme, // Your custom dark theme
        themeMode: themeController.getThemeMode(), // Dynamic theme switching
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
        translationsKeys: AppTranslation.translations,
        locale: const Locale('bn', 'BD'), // Default to Bangla
        fallbackLocale: const Locale('en', 'US'), // Fallback to English
      );
    });
  }
}

