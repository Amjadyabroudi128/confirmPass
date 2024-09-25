import 'package:flutter/material.dart';

import '../../components/TextField.dart';

class password extends StatelessWidget {
  const password({
    super.key,
    required this.pass,
  });

  final TextEditingController pass;

  @override
  Widget build(BuildContext context) {
    return myTextField(
      myController: pass,
      label: Text("Password"),
      validator: (value){
        if ( value == null || pass.text.isEmpty) {
          return "enter a password please";
        }
        return null;
      },
    );
  }
}