import 'package:confirm_pass/consts.dart';
import 'package:flutter/material.dart';
import '../../components/TextField.dart';

class Password extends StatefulWidget {
  const Password({
    super.key,
    required this.pass,
  });

  final TextEditingController pass;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool isHidden = true;

  void _togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return myTextField(
      obscureText: isHidden,
      suffix: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: _togglePasswordView,
          icon: isHidden ? Text("show") : Text("hide"),
        ),
      ),
      myController: widget.pass,
      label: labelText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return enter;
        }
        return null; // Valid password
      },
    );
  }
}
