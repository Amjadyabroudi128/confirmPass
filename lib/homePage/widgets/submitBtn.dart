import 'package:confirm_pass/components/unfocus.dart';
import 'package:confirm_pass/consts.dart';
import 'package:flutter/material.dart';
import '../../Navigation.dart';
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
    var validate = widget._formKey.currentState!.validate();
   final noMatch =  widget.confirmPass.text != widget.pass.text ;
    if (validate) {
      showSnackbar(context, valid);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(seconds3, () {
            Navigate.pop(context);
            Navigate.welcome(context);
          });
          return GestureDetector(
            onTap: () => unFocus(context),
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: TweenAnimationBuilder(
                tween: myAnimation,
                duration: seconds1,
                builder: (context, value, child) {
                  return Center(
                    child: value != 1 ? lockIcon : openLock,
                  );
                },
              ),
            ),
          );
        },
      );
    } else if (noMatch) {
          showSnackbar(context, notMatching,);
        }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.053;
    double width = MediaQuery.of(context).size.width * 0.33;

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
