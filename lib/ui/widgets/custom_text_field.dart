import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int? maxLines;
  const CustomTextField({super.key, required this.hint, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      cursorColor: AppColors.primaryColor,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(AppColors.primaryColor),
        enabled: true,
        hintText: hint,
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
