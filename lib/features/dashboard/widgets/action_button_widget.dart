import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const ActionButtonWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
        ),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
