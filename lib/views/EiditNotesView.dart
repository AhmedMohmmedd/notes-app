import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widghts/Eidit_Notes_body.dart';

class EiditNotesView extends StatelessWidget {
  const EiditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EiditNotesViewBody(),
    );
  }
}
