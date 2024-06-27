import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSearchIcon.CustomIcon(icon: icon, onPressed: onPressed,)
      ],
    );
  }
}
