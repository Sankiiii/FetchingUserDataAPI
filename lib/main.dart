import 'package:flutter/material.dart';
import 'package:srch_prof/screens/home_screen.dart';
import 'package:srch_prof/widgets/splash_widget.dart'; // adjust path if needed

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashWithDelay(),
    );
  }
}
