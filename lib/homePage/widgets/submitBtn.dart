import 'package:confirm_pass/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/elevatedBtn.dart';
import '../../components/snackBart.dart';

class submitBtn extends StatefulWidget {
  submitBtn({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.confirmPass,
    required this.pass,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController confirmPass;
  final TextEditingController pass;

  @override
  State<submitBtn> createState() => _submitBtnState();
}

class _submitBtnState extends State<submitBtn> with SingleTickerProviderStateMixin {
  late AnimationController? controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 400), // Animation duration for lock to unlock
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void onSubmit() {
    if (widget._formKey.currentState!.validate()) {
      showSnackbar(context, "pass is valid");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(Duration(seconds: 3), () {
            Navigator.of(context).pop(true);
            Navigator.of(context).pushNamed("Welcome");
          });
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: Duration(seconds: 1),
                builder: (context, value, child) {
                  return Center(
                    child: FaIcon(
                      size: 70,
                      value < 1 ? lockIcon: ,
                    ),
                  );
                },
              ),
            ),
          );
        },
      );
    } else if (widget.confirmPass.text != widget.pass.text) {
          showSnackbar(context, "Passwords do not match");
        }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 130,
      child: kElevatedButton(
        onPressed: onSubmit,
        child: Text("Submit"),
      ),
    );
  }
}
