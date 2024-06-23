part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
// Loading state
class AddNoteLoading extends AddNoteState {}
// success state
class AddNoteSuccess extends AddNoteState {}
// failure state
class AddNoteFailure extends AddNoteState {
 final String error;

  AddNoteFailure({required this.error});
}

