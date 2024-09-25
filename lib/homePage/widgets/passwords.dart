import 'package:flutter/material.dart';

import '../../components/TextField.dart';

class password extends StatefulWidget {
  const password({
    super.key,
    required this.pass,
  });

  final TextEditingController pass;

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  bool isHidden = true;
  void _togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return myTextField(
      obscureText: true,
      myController: widget.pass,
      label: Text("Password"),
      validator: (value){
        if ( value == null || widget.pass.text.isEmpty) {
          return "enter a password please";
        }
        return null;
      },
    );
  }
}

