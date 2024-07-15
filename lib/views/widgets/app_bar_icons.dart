import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const AppBarIcon({
    super.key,
    required this.icon,
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
        icon: Icon(
          icon,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
