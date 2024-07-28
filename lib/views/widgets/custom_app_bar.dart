import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:news_app/views/widgets/app_bar_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarIcon(
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Today',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' News',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            AppBarIcon(
              child: const Text('🌎',
                  style: TextStyle(
                    fontSize: 17.0,
                  )),
              onPressed: () {},
            ),
            const SizedBox(width: 8.0),
            AppBarIcon(
              child: const Icon(
                Icons.dark_mode,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
