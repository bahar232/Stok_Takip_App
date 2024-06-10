


import 'package:flutter/material.dart';

class AddMaterialButton extends StatelessWidget {

  final void Function() onClick;

  const AddMaterialButton({
    Key? key,
    required this.onClick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
        onPressed: onClick,
        child: const Text("Malzeme Ekle")
    );
  }
}