import 'package:confirm_pass/consts.dart';
import 'package:flutter/material.dart';

import '../../components/TextField.dart';

class confirmingPass extends StatelessWidget {
  const confirmingPass({
    super.key,
    required this.confirmPass,
    required this.pass,
  });

  final TextEditingController confirmPass;
  final TextEditingController pass;

  @override
  Widget build(BuildContext context) {
    String confirm = "Confirm Password";
    return myTextField(
      obscureText: true,
      myController: confirmPass,
      label: Text(confirm),
      validator: (value){
        if(value == null ){
          return "nothing to match yet";
        }
        if (value != pass.text) {
          return notMatching;
        }
        return null;
      },
    );
  }
}
