import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text("Add", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),),
        ),
      ),
    );
  }
}
