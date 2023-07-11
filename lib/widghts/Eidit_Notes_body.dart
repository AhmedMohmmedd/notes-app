import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom_appbar.dart';
import 'custom_textfiled.dart';

class EiditNotesViewBody extends StatelessWidget {
  const EiditNotesViewBody({super.key});

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
            titel: 'Eidi Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFiled(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hint: 'Content',
            maxline:5 ,
          ),
        ],
      ),
    );
  }
}
