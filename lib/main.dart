import 'package:confirm_pass/Themes/Themes.dart';
import 'package:flutter/material.dart';

import 'homePage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.themes,
      home: const MyHomePage(title: 'Confirm Password'),
    );
  }
}

