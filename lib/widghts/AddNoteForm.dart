import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';

import '../cubits/add_note_cubit/add_note_cubit.dart';
import 'customBottn.dart';
import 'custom_textfiled.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled; //validation

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hint: 'Titel',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxline: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(builder: (context, state) {
            return customButtom(
              isLoding: state is AddNoteILoding ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  var curentDate = DateTime.now();
                  var formatcurentDate =
                      DateFormat('dd-M-yyyy   H.m').format(curentDate);

                  var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formatcurentDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
