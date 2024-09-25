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
      obscureText: isHidden,
      suffix: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(onPressed: (){
          setState(() {
            _togglePasswordView();
          });
        }, icon: isHidden ? Text("show") : Text("hide")
        ),
      ),
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

