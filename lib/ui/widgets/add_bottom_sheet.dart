import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16)
          .copyWith(bottom: viewInsets.bottom + 16),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
