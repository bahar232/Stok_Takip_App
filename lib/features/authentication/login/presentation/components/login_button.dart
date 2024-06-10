import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget{

  final String label;
  final void Function() onClick;

  const LoginButton({
    super.key,
    required this.label,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClick,
      child: Text(label),
    );
  }
}