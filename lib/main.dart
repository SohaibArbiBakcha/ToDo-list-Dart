// ignore_for_file: prefer_const_constructors // Ignore a specific lint rule for this file

// Importing necessary dependencies and files
import 'package:firstporject/screens/home.dart'; // Import the home screen
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Entry point of the application
void main() {
  runApp(MyApp());
}

// Defining the MyApp widget, which represents the root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for the MyApp widget

  @override
  Widget build(BuildContext context) {
    // Set system UI overlay style to have a transparent status bar
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    // Return MaterialApp widget, which sets up the application
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Disable debug banner
        title: "TODO list", // Set the title of the app
        home: Home()); // Set the home screen to be the Home widget
  }
}
