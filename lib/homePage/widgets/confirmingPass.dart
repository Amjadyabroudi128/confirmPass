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
    return myTextField(
      myController: confirmPass,
      label: Text("Confirm Password"),
      validator: (value){
        if(value == null ){
          return "nothing to match yet";
        }
        if (value != pass.text) {
          return "passwords do not match";
        }
        return null;
      },
    );
  }
}
