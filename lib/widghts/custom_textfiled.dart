import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constens.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint,  this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      maxLines: maxline ,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: KprimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KprimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([Color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      8,
    ),
    borderSide: BorderSide(color: Color ?? Colors.white),
  );
}
