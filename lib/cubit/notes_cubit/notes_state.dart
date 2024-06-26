part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
// load state
final class NotesLoading extends NotesState {}
// success state
final class NotesSuccess extends NotesState {
   final List<NoteModel> notes;

  NotesSuccess(this.notes);

}
// failure state
final class NotesFailure extends NotesState {
  final String errMessage;
  NotesFailure(this.errMessage);
}
