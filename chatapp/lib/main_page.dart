import 'package:chatapp/consts.dart'; // Import the consts file
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 55; // height in centimeters
  int weight = 60; // weight in kilograms
  late double bmi;
  String gender = ''; // Gender state to track selection

  @override
  void initState() {
    super.initState();
    bmi =
        calculateBMI(height: height, weight: weight); // Initial BMI calculation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'), // AppBar with title
        backgroundColor: Colors.green, // Set a color for the AppBar
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // First Row for Gender Selection with decoration
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'M'; // Set gender to Male
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: gender == 'M'
                            ? Colors.orange // Active color for Male
                            : Colors.orange.withAlpha(50), // Inactive color
                        borderRadius:
                            BorderRadius.circular(15), // Rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Icon(Icons.male, size: 150),
                            Text('Male'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'F'; // Set gender to Female
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: gender == 'F'
                            ? Colors.purple // Active color for Female
                            : Colors.purple.withAlpha(50), // Inactive color
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Icon(Icons.female, size: 150),
                            Text('Female'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 55),

              // Second Row for Height and Weight Inputs
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("$height", style: kInputLabelColor),
                        const Text('Height (cm)'),
                        Row(
                          children: [
                            FloatingActionButton(
                              backgroundColor:
                                  Colors.red, // Set background color
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                                width: 10), // Add space between buttons
                            FloatingActionButton(
                              backgroundColor:
                                  Colors.green, // Set background color
                              onPressed: () {
                                setState(() {
                                  height++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("$weight", style: kInputLabelColor),
                        const Text('Weight (kg)'),
                        Row(
                          children: [
                            FloatingActionButton(
                              backgroundColor:
                                  Colors.red, // Set background color
                              onPressed: () {
                                setState(() {
                                  if (weight > 50) weight--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                                width: 10), // Add space between buttons
                            FloatingActionButton(
                              backgroundColor:
                                  Colors.green, // Set background color
                              onPressed: () {
                                setState(() {
                                  weight++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // BMI Column
              const SizedBox(height: 30),
              const Text(
                "Your BMI is:",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                bmi.toStringAsFixed(2),
                style: kInputLabelColor.copyWith(
                    color: kOutputTextColor,
                    fontSize: 50), // Correct use of copyWith()
              ),
              const SizedBox(height: 20),
              Text(
                getBMICategory(bmi), // Display the BMI category
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: getBMICategoryColor(
                      bmi), // Set the color based on the BMI category
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculateBMI({required int height, required int weight}) {
    // height in centimeters, weight in kilograms
    return (weight / (height * height)) * 10000;
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color getBMICategoryColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue; // Underweight color
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return Colors.green; // Normal weight color
    } else if (bmi >= 25 && bmi < 29.9) {
      return Colors.orange; // Overweight color
    } else {
      return Colors.red; // Obese color
    }
  }
}
