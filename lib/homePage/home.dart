import 'package:confirm_pass/components/TextField.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:  Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              myTextField(

              ),
              SizedBox(height: 10,),
              TextFormField(

              ),
            ],
          ),
        ),
      ),
    );
  }
}