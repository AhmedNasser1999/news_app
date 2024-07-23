import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class AppBarIcon extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const AppBarIcon({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: AppColors.iconBackgroundColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: child,
        onPressed: onPressed,
      ),
    );
  }
}
