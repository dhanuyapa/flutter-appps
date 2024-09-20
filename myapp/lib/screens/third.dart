import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'), // AppBar title for Third screen
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to Home screen
          },
        ),
      ),
      body: Center(
        child: const Text('Welcome to the Third Screen!'),
      ),
    );
  }
}
