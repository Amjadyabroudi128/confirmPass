
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class MyTheme {
  static final _border = OutlineInputBorder(
    borderSide: BorderSide(width: 1,color: borders),
    borderRadius: BorderRadius.circular(18.0),
  );
  static final _error = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2),
  );
  static final themes = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: floatingStyle,
        fontSize: 25
      ),
      border: _border,
      focusedBorder: _border,
      errorBorder: _error,
      focusedErrorBorder: _error,
      enabledBorder: _border
    )
  );
 }