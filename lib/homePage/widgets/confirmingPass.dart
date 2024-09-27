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

    return TextFormField(
      obscureText: true,
      controller: confirmPass,
      decoration: InputDecoration(
        labelText: confirm
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please confirm your password'; // Validates if the confirm password field is empty
        }
        if (value != pass.text) {
          return 'Passwords do not match'; // Validates if the passwords match
        }
        return null; // Passwords match
      },
    );
  }
}
