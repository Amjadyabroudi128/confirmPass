
import 'package:confirm_pass/components/unfocus.dart';
import 'package:confirm_pass/consts.dart';
import 'package:confirm_pass/homePage/widgets/confirmingPass.dart';
import 'package:confirm_pass/homePage/widgets/passwords.dart';
import 'package:confirm_pass/homePage/widgets/submitBtn.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController pass = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pass.dispose();
    confirmPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(context),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Password(pass: pass),
                  SizedBox(height: MediaQuery.of(context).size.height / 42),
                  ConfirmingPass(confirmPass: confirmPass, pass: pass),
                  myBox30(context),
                  submitBtn(formKey: _formKey, confirmPass: confirmPass, pass: pass),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
