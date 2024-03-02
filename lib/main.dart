import 'package:flutter/material.dart';
import 'package:student_hub/screens/login_screen.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), // Set LoginScreen as the home screen
    );
  }
}
