import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 20,),
          CustomTextField(),
        ],
      ),
    );
  }
}
