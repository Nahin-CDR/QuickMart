import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/resources/common_controllers/theme.dart';
import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';


void main() {
  runApp(
    GetMaterialApp(
      themeMode: MyTheme.instance.getCurrentTheme(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale: const Locale('bn', 'BD'),
      fallbackLocale: const Locale('en', 'US'),
    ),
  );
}
