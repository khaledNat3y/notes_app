import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const CustomSearchIcon.CustomIcon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16)
      ),
      child: IconButton(onPressed: onPressed,
          icon: Icon(icon, size: 28,)),
    );
  }
}
