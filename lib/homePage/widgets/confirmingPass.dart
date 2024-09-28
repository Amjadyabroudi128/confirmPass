import 'package:flutter/material.dart';
import '../../components/TextField.dart';

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
    String confirm = "Confirm Password";

    return myTextField(
      obscureText: true,
      myController: confirmPass,
      label: confirm,
      // decoration: InputDecoration(
      //   labelText: confirm
      // ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a password';
        }
        if (value != pass.text) {
          return 'Passwords do not match';
        }
        return null; // Passwords match
      },
    );
  }
}
