import 'package:flutter/material.dart';

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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('White Background App'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Color.fromARGB(255, 124, 18, 18),
                  height: 350,
                  width: double.infinity,
                ),
                Container(
                  color: Color.fromARGB(255, 195, 152, 152),
                  height: 150,
                  width: double.infinity,
                ),

                // New Row added
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.blue,
                        height: 175,
                        width: 175,
                      ),
                      SizedBox(width: 10), // Add space between containers
                      Container(
                        color: Colors.green,
                        height: 175,
                        width: 175,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
//icon add 
//appBar: AppBar(
          title: const Text('AppBar Demo'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                // Display a SnackBar when the button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                   const SnackBar(content: Text('This is a snackbar!')),
                );
              },
            ),*/