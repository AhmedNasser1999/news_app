import 'package:flutter/material.dart';
import 'package:news_app/providers/carousel_provider.dart';
import 'package:news_app/views/pages/base/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CarouselProvider())
      ],
      child: const MyApp(),
    ),
  );
}
