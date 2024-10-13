
 import 'package:flutter/material.dart';
 class Navigate {
   static welcome(BuildContext context) {
     return Navigator.of(context).pushNamed("Welcome");
   }
   static pop(BuildContext context) {
     return Navigator.of(context).pop(true);
   }
 }

