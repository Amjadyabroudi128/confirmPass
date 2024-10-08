import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  final TextEditingController? myController;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final String? label; // Changed to String
  final Widget? suffix;
  const myTextField({super.key, this.myController,  this.obscureText = false, this.validator, this.label, this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffix,
        labelText: label
      ),
      validator: validator,
    );
  }
}
