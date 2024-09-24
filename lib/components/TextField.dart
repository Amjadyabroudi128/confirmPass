import 'package:confirm_pass/consts.dart';
import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  final TextEditingController? myController;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final Widget? label;
  const myTextField({super.key, this.myController,  this.obscureText = false, this.validator, this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: borders)
        ),
        label: label,
      ),
    );
  }
}
