import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  final TextEditingController? myController;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final Widget? label;
  const myTextField({super.key, this.myController, required this.obscureText, this.validator, this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: label,
      ),
    );
  }
}
