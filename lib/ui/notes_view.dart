import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Color(0xff51E0CB),
        child: Icon(Icons.add, color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
