import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

import '../../constens.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fatchAllNotes() async{
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBoxe);
        List<NoteModel> notes = notesBox.values.toList();
            emit(NotesSuccess(notes));

    } catch (e) {
      emit(NotesFaluir(e.toString()));
    }
  }
  }

