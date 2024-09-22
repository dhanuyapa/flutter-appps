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
            )
            
          route navigate

          main

          import 'package:flutter/material.dart';
import 'screens/home.dart'; // Import the Home screen
import 'screens/second.dart'; // Import the Second screen
import 'screens/third.dart'; // Import the Third screen

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
      routes: <String, WidgetBuilder>{
        '/second': (context) => const Second(), // Define Second screen route
        '/third': (context) => const Third(), // Define Third screen route
      },
    );
  }
}
  
            
            
  home


  import 'package:flutter/material.dart';

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
                // Navigate to Second screen using named route
                Navigator.pushNamed(context, '/second');
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



    ------------------------ navigate method 1---------------------


home.dart


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



     main.dart

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



-------------with data-----------


home

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


main

import 'package:flutter/material.dart';
import 'screens/home.dart'; // Import the Home screen
import 'screens/second.dart'; // Import the Second screen
import 'screens/third.dart'; // Import the Third screen

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
      routes: <String, WidgetBuilder>{
        '/third': (context) => const Third(), // Define Third screen route
      },
    );
  }
}


second

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
      body: Center(
        child: Text(' $data'), // Display the passed data
      ),
    );
  }
}

            ,*/