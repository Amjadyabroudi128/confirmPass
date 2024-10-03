
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// colors
Color borders = Colors.black;
Color floatingStyle = Colors.blue;
Color errorColor = Colors.red;
Color btnBG = Colors.black;
Color btnFG = Colors.white;
// validate
 String notMatching = "passwords do not match";
String confirm = "Confirm Password";
String enter = "Please enter a Password";
String labelText = "Password";


 //TextStyles
TextStyle floatingLable = TextStyle(
    color: floatingStyle,
    fontSize: 25
);
TextStyle btnStyle = TextStyle(
 fontSize: 20
);
FaIcon lockIcon = FaIcon(FontAwesomeIcons.lock,);
FaIcon openLock = FaIcon(FontAwesomeIcons.lockOpen,);
// Duration
Duration miliscs = Duration(milliseconds: 400);
const seconds1 = Duration(seconds: 1);