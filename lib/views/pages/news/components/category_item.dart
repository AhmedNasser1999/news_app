import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: SizedBox(
            width: 90,
            height: 75,
            child: Image.asset(
              'assets/images/1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: Colors.black26,
            width: 90,
            height: 75,
            alignment: Alignment.center,
            child: const Text(
              'Ahmed',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
