
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../consts.dart';

class MyTheme {
 static final BorderRadius myBorder = BorderRadius.circular(18);
  static final _border = OutlineInputBorder(
    borderSide: BorderSide(width: 1,color: borders),
    borderRadius: myBorder
  );
  static final OutlineInputBorder _error = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2),
    borderRadius: myBorder
  );
  static final themes = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: floatingStyle,
        fontSize: 25
      ),
      border: _border,
      focusedBorder: _border,
      errorBorder: _error ,
      focusedErrorBorder: _error,
      enabledBorder: _border
    )
  );
 }