import 'package:flutter/material.dart';
import 'package:nike_app/pages/home_page.dart';
import 'package:nike_app/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlueAccent,
          brightness: Brightness.light,
        ),
      ),
      home: HomePage(),
    );
  }
}
