import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

import '../../constens.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fatchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNoteBoxe);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
