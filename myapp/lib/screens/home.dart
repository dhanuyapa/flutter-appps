import 'package:flutter/material.dart';
import 'second.dart'; // Import the Second screen

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Second screen and pass data
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Second('CCCS'), // Pass data 'CCCS' to Second screen
                  ),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            const SizedBox(height: 20), // Space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to Third screen using named route
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
