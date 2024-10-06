import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_mart/core/theme/custom_theme.dart';
import 'package:quick_mart/core/theme/theme_controller.dart';
import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';


void main(){
  //await GetStorage.init();
  runApp(QuickMart());
}

class QuickMart extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());
 // final ThemeService _themeService = ThemeService();
  QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    // The whole app is now reactive to theme changes
    return Obx(() {
      return GetMaterialApp(
        title: "QuickMart",
        debugShowCheckedModeBanner: false,

        // Apply the light and dark themes across the entire app
        theme: CustomTheme.lightTheme, // Define your light theme
        darkTheme: CustomTheme.darkTheme, // Define your dark theme
        themeMode: themeController.theme, // Use the theme controller to manage theme

        // Localization and routing
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
        translationsKeys: AppTranslation.translations,
        locale: const Locale('bn', 'BD'),
        fallbackLocale: const Locale('en', 'US'),
      );
    });
  }
}
