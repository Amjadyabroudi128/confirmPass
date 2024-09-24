
 import 'package:flutter/material.dart';

import '../consts.dart';

class MyTheme {
  static final themes = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1,color: borders),
        borderRadius: BorderRadius.circular(18.0),
      )
    )
  );
 }