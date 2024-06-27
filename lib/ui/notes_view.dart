import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/ui/widgets/add_bottom_sheet.dart';
import 'package:notes_app/ui/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddBottomSheet();
            },
            backgroundColor: const Color(0xff383838),
          );
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        backgroundColor: const Color(0xff51E0CB),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
