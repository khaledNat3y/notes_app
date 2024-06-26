import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/strings.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List<NoteModel>? notes;
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    // emit(NotesLoading());
      var notesBox =  Hive.box<NoteModel>(kNotesBox);
      return notesBox;
  }
}
