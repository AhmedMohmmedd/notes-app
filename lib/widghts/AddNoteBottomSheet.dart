import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constens.dart';
import 'customBottn.dart';
import 'custom_textfiled.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hint: 'Titel',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFiled(
              hint: 'Content',
              maxline: 5,
            ),
            SizedBox(
              height: 32 ,
            ), 
            customButtom(),
             SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
