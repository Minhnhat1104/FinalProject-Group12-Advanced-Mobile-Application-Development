import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/BrowseProject/ProjectList/index.dart';
import 'package:student_hub/screens/Dashboard/dashboard_screen.dart';
import 'package:student_hub/screens/Home/index.dart';
import 'package:student_hub/screens/Authentication/Login/index.dart';
import 'package:student_hub/screens/Profile/profile_input.dart';
import 'package:student_hub/widgets/drawer_nav_widget.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: tdNeonBlue,
        ),
        home: ProjectList());
  }
}
