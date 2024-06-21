import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(AppColors.primaryColor),
        enabled: true,
        hintText: "Title",
        hintStyle: const TextStyle(color: AppColors.primaryColor),
      )
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white),
      );
  }
}
