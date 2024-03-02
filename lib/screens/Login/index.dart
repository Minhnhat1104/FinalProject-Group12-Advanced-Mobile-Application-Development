import 'package:flutter/material.dart';
import 'package:student_hub/screens/Login/body.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginWidget();
  }
}
