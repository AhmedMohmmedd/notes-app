import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_searshicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titel, required this.icon});
  final String titel;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
          titel,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        customSearchIcon(icon: icon,),
      ],
    );
  }
}
