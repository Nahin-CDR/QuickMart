// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../styles/bangla_style_manager.dart';
import '../styles/color_manager.dart';
import '../styles/english_style_manager.dart';
import 'localised_text.dart';

class SliderWidget extends StatelessWidget {
  String image, title, description;

  //Constructor created
  SliderWidget({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorManager.cyanLight,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),

        ),




        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
          child: LocalisedText(
            text: title.toString(),
            bnStyle: getBoldStyle21(color: ColorManager.blackMain),
            enStyle: getSemiBoldStyleEn22(color: ColorManager.primaryPurple522B79),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
          child: LocalisedText(
            text: description.toString(),
            textAlignment: TextAlign.center,
            bnStyle: getRegularStyle15(color: ColorManager.blackMain),
            enStyle: getRegularStyleEn16(color: ColorManager.primaryPurple522B79),
          ),
        ),
      ],
    );
  }
}
class OnboardingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 328,
          height: 408,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFF4FCFA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 104, height: 32, child: Stack()),
                      SizedBox(width: 104),
                      Text(
                        'Skip for now',
                        style: TextStyle(
                          color: Color(0xFF21D4B4),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                          letterSpacing: 0.07,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 46),
                  Container(
                    width: 240,
                    height: 240,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/240x240"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}