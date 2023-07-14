// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'NotesListView.dart';
// import 'NotesItem.dart';
// import 'custom_appbar.dart';

// class notesViewBody extends StatelessWidget {
//   const notesViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 24),
//       child: Column(
//         children: const [
//           SizedBox(
//             height: 50,
//           ),
//           CustomAppBar(titel: 'Notes', icon: Icons.search,),
//           Expanded(child: NotesListView()),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';

import 'NotesListView.dart';
import 'NotesItem.dart';
import 'custom_appbar.dart';

class notesViewBody extends StatefulWidget {
  const notesViewBody({super.key});

  @override
  State<notesViewBody> createState() => _notesViewBodyState();
}

class _notesViewBodyState extends State<notesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fatchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            titel: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
