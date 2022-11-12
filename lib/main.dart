import 'package:flutter/material.dart';
import 'package:flutter_intensif_club_fugi/constant/light_theme.dart';
import 'package:flutter_intensif_club_fugi/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Shop',
      theme: lightTheme,
      home: const Home(),
    );
  }
}
