import 'package:flutter/material.dart';

class kElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final Widget? child;
  const kElevatedButton({super.key, this.onPressed, this.style, this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, style: style, child: child,);
  }
}