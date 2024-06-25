import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final bool isLoading;
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: isLoading ? const SizedBox(
            width: 24,
            height: 24,
              child: CircularProgressIndicator(color: Colors.black,)) : const Text("Add", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),),
        ),
      ),
    );
  }
}
