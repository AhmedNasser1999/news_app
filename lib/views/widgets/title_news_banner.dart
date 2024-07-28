import 'package:flutter/material.dart';

class TitleNewsBanner extends StatelessWidget {
  final String titleText;

  const TitleNewsBanner({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        titleText,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
