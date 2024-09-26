
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class MyTheme {
  static final InputBorder _border = OutlineInputBorder(
    borderSide: BorderSide(width: 1,color: borders),
    borderRadius: BorderRadius.circular(18.0),
  );
  static final themes = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: floatingStyle,
        fontSize: 25
      ),
      border: _border,
      focusedBorder: _border,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2)
      ),
    )
  );
 }