import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  const CustomTextField({super.key, required this.hint, this.maxLines, this.onSaved, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      cursorColor: AppColors.primaryColor,
      maxLines: maxLines ?? 1,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if(value?.isEmpty ?? true) {
          return "Field is required";
        }else {
          return null;
        }
      },
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
