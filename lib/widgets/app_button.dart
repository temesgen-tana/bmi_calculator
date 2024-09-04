import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.action,
    required this.buttonIcon,
    this.label = '',
  });

  final String label;
  final void Function() action;
  final Icon buttonIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(label), buttonIcon],
      ),
    );
  }
}
