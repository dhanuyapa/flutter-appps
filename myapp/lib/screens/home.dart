import 'package:flutter/material.dart';
import 'second.dart'; // Import the Second screen
import 'third.dart'; // Import the Third screen

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'), // AppBar title for Home screen
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Second screen when this button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Second(),
                  ),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            const SizedBox(height: 20), // Space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to Third screen when this button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Third(),
                  ),
                );
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
