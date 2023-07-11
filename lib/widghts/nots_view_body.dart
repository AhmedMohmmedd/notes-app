import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NotesListView.dart';
import 'NotesItem.dart';
import 'custom_appbar.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(titel: 'Notes', icon: Icons.search,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
