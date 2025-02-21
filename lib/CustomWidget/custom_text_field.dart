import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;
  final IconData? prefixIcon;
  final int? maxLength; // Added maxLength parameter

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.onSuffixTap,
    this.prefixIcon,
    this.maxLength, // Initialize maxLength
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLength: maxLength, // Set maxLength for text field
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Get.theme.secondaryHeaderColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Get.theme.secondaryHeaderColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Get.theme.secondaryHeaderColor, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        prefixIcon: prefixIcon != null
            ? Icon(
          prefixIcon,
          color: Get.theme.secondaryHeaderColor,
        )
            : null,
        suffixIcon: suffixIcon != null
            ? GestureDetector(
          onTap: onSuffixTap,
          child: Icon(
            suffixIcon,
            color: Get.theme.secondaryHeaderColor,
          ),
        )
            : null,
        counterText: "", // Hide default counter text
      ),
    );
  }
}
