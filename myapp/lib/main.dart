import 'package:flutter/material.dart';
import 'screens/home.dart'; // Import the Home screen
import 'screens/second.dart';
import 'screens/third.dart'; // Import the Second screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This removes the debug banner
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Set background color to white
      ),
      home: const Home(), // Start with Home screen
    );
  }
}
