import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 16,),
          CustomTextField(hint: "Content", maxLines: 5,)
        ],
      ),
    );
  }
}
