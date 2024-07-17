import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glimpse Go',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF4a90e2), //4a90e2
          onPrimary: Color(0xFF121212), //121212
          secondary: Color(0xFF7BF6DC), //7BF6DC
          onSecondary: Color(0xFF121212), //121212
          surface: Color(0xFF121212), //121212
          onSurface: Color(0xFFE0E0E0), //E0E0E0
          error: Color(0xFFB71C1C), //CF6679
          onError: Color(0xFFFFCDD2), //121212
        ),
      ),
      home: const Placeholder(),
    );
  }
}
