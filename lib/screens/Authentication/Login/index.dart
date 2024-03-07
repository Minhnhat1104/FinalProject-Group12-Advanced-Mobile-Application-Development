import 'package:flutter/material.dart';
import 'package:student_hub/screens/Authentication/Login/body.dart';
import 'package:student_hub/screens/Authentication/index.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class LoginScreen extends StatelessWidget {
  final Function(authWidgetKey) updateKey;

  const LoginScreen({required this.updateKey});

  @override
  Widget build(BuildContext context) {
    return LoginWidget(updateKey: updateKey);
  }
}
