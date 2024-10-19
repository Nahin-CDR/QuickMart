import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/bangla_style_manager.dart';
import '../styles/color_manager.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final bool isEnabled;
  final Color? backgroundColor;
  final BoxBorder? border;
  final InputBorder? enabledBorder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final Color? focusedBorderColor;
  final Color? inactiveBorderColor;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? maxLength;
  final String? Function(String?)? validator;

  const CustomInputField({
    super.key,
    required this.controller,
    required this.isEnabled,
    this.backgroundColor,
    this.focusNode,
    this.maxLength,
    this.border,
    this.enabledBorder,
    this.prefixIcon,
    this.hintText,
    this.onChanged,
    this.suffixIcon,
    this.obscureText,
    this.focusedBorderColor,
    this.inactiveBorderColor,
    this.keyboardType,
    this.maxLines,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  Get.isDarkMode ? ColorManager.primaryBlack : ColorManager.primaryWhite,//backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: (focusNode?.hasFocus == true)
            ? [
          BoxShadow(
            color: Colors.grey.withOpacity(0.18),
            offset: const Offset(0, 6),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ]
            : [
          const BoxShadow(
            color: Color(0x07480091),
            blurRadius: 12,
            offset: Offset(0, 6),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.primaryBlack, // Colors.black, // You can modify the cursor color here
        validator: validator,
        enabled: isEnabled,
        keyboardType: keyboardType ?? TextInputType.text,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        style: TextStyle(fontSize: 14, color:  Get.isDarkMode ? ColorManager.primaryWhite : ColorManager.primaryBlack),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: false,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(color: inactiveBorderColor ?? Colors.grey), // Default inactive border color
          ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
                borderSide: BorderSide(color: inactiveBorderColor ?? Colors.grey), // Set inactive border color
              ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: focusedBorderColor ?? Colors.blue, // Set focused border color
              width: 2.0,
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18),
          hintText: hintText ?? "Enter text",
          hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ),
    );
  }
}

