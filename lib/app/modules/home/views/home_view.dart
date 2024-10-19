import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_mart/app/resources/constants/asset_constants.dart';
import 'package:quick_mart/app/resources/styles/color_manager.dart';
import 'package:quick_mart/app/resources/widgets/home/list_tile.dart';
import 'package:quick_mart/app/resources/widgets/home/theme_switcher.dart';
import '../../../resources/widgets/home/language_switcher.dart';
import '../../../resources/widgets/home/section_title.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Teal Color with Profile Section
          Positioned(
              top: 0, // Adjust this to control the curve overlay on the teal background
              left: 0,
              right: 0,
              child: Obx((){
                return Container(
                  color: controller.themeController.isDarkTheme ? ColorManager.cyan50 : ColorManager.tealPrimary,
                  padding: const EdgeInsets.all(20.0),
                  height: 200,
                  child: Row(
                    children: [
                      // Profile Image
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(AssetConstants.profile), // Replace with your asset image
                      ),
                      const SizedBox(width: 16),
                      // Name and Email
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nazmul Nahin', // User name
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'nahin.cdr@gmail.com', // User email
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Refresh Icon
                      IconButton(
                        icon: const Icon(Icons.refresh_rounded, color: Colors.white),
                        onPressed: () {
                          // Add refresh functionality
                        },
                      ),
                    ],
                  ),
                );
              })
          ),
          // White Curved Section Overlapping Teal Background
          Positioned(
            top: 140, // Adjust this to control the curve overlay on the teal background
            left: 0,
            right: 0,
            child: Obx((){
              return Container(
                height: 500,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: controller.themeController.isDarkTheme ? ColorManager.primaryBlack : ColorManager.primaryWhite ,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Personal Information Section
                      sectionTitle('personal_info', theme: controller.themeController),
                      const SizedBox(height: 10),
                      listTilePortion(
                        context,
                        icon: Icons.local_shipping_rounded,
                        title: 'Shipping Address', onPress: (){},
                      ),
                      listTilePortion(
                        onPress: (){},
                        context,
                        icon: Icons.credit_card_rounded,
                        title: 'Payment Method',
                      ),
                      listTilePortion(
                        onPress: (){},
                        context,
                        icon: Icons.history_rounded,
                        title: 'Order History',
                      ),
                      const SizedBox(height: 30),
                      sectionTitle('Others', theme: controller.themeController),
                      languageSwitcher(context),
                      themeSwitcher(context, themeController: controller.themeController),
                    ],
                  ),
                ),
              );
            })
          ),
        ],
      ),
    );
  }
  
}










