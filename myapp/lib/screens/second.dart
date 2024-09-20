import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'), // AppBar title for Second screen
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to Home screen
          },
        ),
      ),
      body: Center(
        child: const Text('Welcome to the Second Screen!'),
      ),
    );
  }
}
