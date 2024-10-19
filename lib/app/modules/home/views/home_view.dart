import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_mart/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';


// HomeView Widget
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

// HomeView Widget
class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: Text(
          'Settings'.tr,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Personal Information Section
              _buildSectionTitle('Personal Information'),
              const SizedBox(height: 10),
              _buildListTile(
                context,
                icon: Icons.local_shipping_rounded,
                title: 'Shipping Address',
              ),
              _buildListTile(
                context,
                icon: Icons.credit_card_rounded,
                title: 'Payment Method',
              ),
              _buildListTile(
                context,
                icon: Icons.history_rounded,
                title: 'Order History',
              ),
              const SizedBox(height: 30),

              // Support & Information Section
              _buildSectionTitle('Support & Information'),
              const SizedBox(height: 10),
              _buildListTile(
                context,
                icon: Icons.privacy_tip_rounded,
                title: 'Privacy Policy',
              ),
              _buildListTile(
                context,
                icon: Icons.description_rounded,
                title: 'Terms & Conditions',
              ),
              _buildListTile(
                context,
                icon: Icons.help_rounded,
                title: 'FAQs',
              ),
              const SizedBox(height: 30),

              // Account Management Section
              _buildSectionTitle('Account Management'),
              const SizedBox(height: 10),
              _buildListTile(
                context,
                icon: Icons.lock_rounded,
                title: 'Change Password',
              ),

              // Language Switch Section
              _buildLanguageSwitch(context),
              const SizedBox(height: 30),

              // Theme Switch Section
              _buildThemeSwitch(context),
            ],
          ),
        ),
      ),
    );
  }

  // Build Section Title
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    );
  }

  // Build List Tile
  Widget _buildListTile(BuildContext context, {required IconData icon, required String title}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
      leading: Icon(icon, color: Colors.teal),
      title: Text(
        title.tr,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: () {
        // Add navigation or functionality here
      },
    );
  }

  // Build Theme Switch Widget
  Widget _buildThemeSwitch(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
      leading: const Icon(Icons.phone_android_rounded, color: Colors.teal),
      title: Text(
        'Dark Theme'.tr,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: Obx(() {
        return Switch(
          value: controller.themeController.isDarkTheme,
          activeColor: Colors.teal,
          onChanged: (value) {
            controller.themeController.toggleTheme();
          },
        );
      }),
    );
  }

  // Build Language Switch Widget
  Widget _buildLanguageSwitch(BuildContext context) {
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
}






