import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String data; // Accepting data as a parameter

  const Second(this.data, {super.key}); // Constructor to accept data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: ListView(
        children: <Widget>[
          // Corrected widget list type
          Container(
            height: 280,
            color: const Color.fromARGB(
                255, 117, 58, 58), // Corrected Color syntax
            child: Center(
              child: Text('Container 1'),
            ),
          ),
          Container(
            height: 280,
            color: Color.fromARGB(255, 149, 27, 27), // Corrected Color syntax
            child: Center(
              child: Text('Container 1'),
            ),
          ),
          Container(
            height: 280,
            color: const Color.fromARGB(
                255, 117, 58, 58), // Corrected Color syntax
            child: Center(
              child: Text('Container 1'),
            ),
          ),
          Container(
            height: 280,
            color: Colors.grey, // Corrected Color syntax
            child: Center(
              child: Text('Container 2'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Passed data: $data', // Display the passed data
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
