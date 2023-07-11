import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constens.dart';

class customButtom extends StatelessWidget {
  const customButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: KprimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Text(
        'Add',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      )),
    );
  }
}
