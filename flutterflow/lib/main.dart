import 'package:flutter/material.dart';
import 'pages/homepage.dart'; // Adjust based on your page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFlow App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homepage(), // Set your starting page
    );
  }
}