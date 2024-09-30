import 'package:flutter/material.dart';

import '../../components/elevatedBtn.dart';
import '../../components/snackBart.dart';

class submitBtn extends StatelessWidget {
  const submitBtn({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.confirmPass,
    required this.pass,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController confirmPass;
  final TextEditingController pass;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 130,
      child: kElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            showSnackbar(context, "password is Valid");
          } else if (confirmPass.text != pass.text) {
            showSnackbar(context, "Passwords do not match");
          }
        },
        child: Text("Submit"),
        style: ElevatedButton.styleFrom(
            elevation: 5,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
                fontSize: 20
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            )
        ),
      ),
    );
  }
}
