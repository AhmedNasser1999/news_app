import 'package:flutter/material.dart';

class TitleNewsBanner extends StatelessWidget {
  final String titleText;
  final VoidCallback onButtonPressed;

  const TitleNewsBanner({
    super.key,
    required this.titleText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: onButtonPressed,
          child: const Text(
            'View all',
            style: TextStyle(
              fontSize: 15.0,
              color: Color.fromARGB(255, 25, 134, 223),
            ),
          ),
        ),
      ],
    );
  }
}
