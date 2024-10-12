import 'package:flutter/material.dart';
import '../../components/TextField.dart';
import '../../consts.dart';

class ConfirmingPass extends StatefulWidget {
  const ConfirmingPass({
    super.key,
    required this.confirmPass,
    required this.pass,
  });

  final TextEditingController confirmPass;
  final TextEditingController pass;

  @override
  State<ConfirmingPass> createState() => _ConfirmingPassState();
}

class _ConfirmingPassState extends State<ConfirmingPass> {
  @override
  void initState() {
    super.initState();
    // Listen for changes in both password fields to update UI accordingly
    widget.pass.addListener(() {
      setState(() {});
    });
    widget.confirmPass.addListener(() {
      setState(() {});
    });
  }

  bool passwordsMatch() {
    return widget.pass.text == widget.confirmPass.text && widget.pass.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return myTextField(
      obscureText: true,
      myController: widget.confirmPass,
      label: confirm,
      suffix: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: passwordsMatch()
            ? corrected
        : IconButton(
          icon: clear,
          onPressed: (){
            clearConfirm();
          },
        )
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return enter;
        }
        if (value != widget.pass.text) {
          return notMatching;
        }
        return null; // Passwords match
      },
    );
  }
  void clearConfirm() {
    widget.confirmPass.clear();
  }
}
