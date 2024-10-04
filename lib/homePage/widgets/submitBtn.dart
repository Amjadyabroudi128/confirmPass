import 'package:confirm_pass/components/unfocus.dart';
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
      duration: miliscs, // Animation duration for lock to unlock
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
          Future.delayed(seconds3, () {
            Navigator.of(context).pop(true);
            Navigator.of(context).pushNamed("Welcome");
          });
          return GestureDetector(
            onTap: () => unFocus(context),
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: seconds1,
                builder: (context, value, child) {
                  return Center(
                    child: value < 1 ? lockIcon : openLock,
                  );
                },
              ),
            ),
          );
        },
      );
    } else if (widget.confirmPass.text != widget.pass.text) {
          showSnackbar(context, "Passwords do not match",);
        }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.053;
    double width = 130;
    String submit = "submit";
    return SizedBox(
      height: height,
      width: width,
      child: kElevatedButton(
        onPressed: onSubmit,
        child: Text(submit),
      ),
    );
  }
}
