import 'package:flutter/material.dart';
import '../consts.dart';

class MyTheme {
 static final BorderRadius myBorder = BorderRadius.circular(18);
  static final _border = OutlineInputBorder(
    borderSide: BorderSide(width: 1,color: borders),
    borderRadius: myBorder
  );
  static final OutlineInputBorder _error = OutlineInputBorder(
      borderSide: BorderSide(color: errorColor, width: 2),
    borderRadius: myBorder
  );
  static final themes = ThemeData().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: floatingLable,
      border: _border,
      focusedBorder: _border,
      errorBorder: _error ,
      focusedErrorBorder: _error,
      enabledBorder: _border
    ),
   elevatedButtonTheme: ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
           elevation: 5,
           backgroundColor: btnBG,
           foregroundColor: btnFG,
           textStyle: btnStyle,
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(12)
           )
       ),
   )
  );
 }