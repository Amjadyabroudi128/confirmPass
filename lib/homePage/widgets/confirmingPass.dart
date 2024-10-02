import 'package:flutter/material.dart';
import '../../components/TextField.dart';
import '../../consts.dart';

class ConfirmingPass extends StatelessWidget {
  const ConfirmingPass({
    super.key,
    required this.confirmPass,
    required this.pass,
  });

  final TextEditingController confirmPass;
  final TextEditingController pass;

  @override
  Widget build(BuildContext context) {
    return myTextField(
      obscureText: true,
      myController: confirmPass,
      label: confirm,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return enter;
        }
        if (value != pass.text) {
          return notMatching;
        }
        return null; // Passwords match
      },
    );
  }
}
