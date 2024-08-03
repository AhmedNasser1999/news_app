import 'package:flutter/material.dart';
import 'package:news_app/providers/braking_news_provider.dart';
import 'package:news_app/providers/categories_provider.dart';
import 'package:news_app/views/pages/base/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BrakingNewsProvider()),
        ChangeNotifierProvider(create: (context) => CategoriesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
