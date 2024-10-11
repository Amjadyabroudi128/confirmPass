import 'package:confirm_pass/consts.dart';
import 'package:flutter/material.dart';
import '../../components/TextField.dart';

class Password extends StatefulWidget {
  const Password({
    super.key,
    required this.pass, this.confirmPass,

  });

  final TextEditingController pass;
  final TextEditingController? confirmPass;
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
  void initState() {
    super.initState();
    widget.pass.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return myTextField(
      obscureText: isHidden,
      suffix: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: widget.pass.text.isEmpty
            ? IconButton(
          onPressed: _togglePasswordView,
          icon: isHidden ? const Text("show") : const Text("hide"),
        ) : IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            widget.pass.clear(); // Clear the text when pressed
          },
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
