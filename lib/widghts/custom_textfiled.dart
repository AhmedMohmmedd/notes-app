import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constens.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.hint, this.maxline = 1, this.onSaved});
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'feild is rquired';
        } else {
          return null;
        }
      },
      cursorColor: KprimaryColor,
      maxLines: maxline,
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
