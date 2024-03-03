import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/SignUpStep2/index.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: HeaderNavBar(),
          body: Theme(
            data: ThemeData.light().copyWith(
              colorScheme: const ColorScheme.light(
                primary: tdNeonBlue,
              ),
            ),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: APP_PADDING_X),
                child: SignupStep2Screen()),
          ), // Set LoginScreen as the home screen
        ));
  }
}
