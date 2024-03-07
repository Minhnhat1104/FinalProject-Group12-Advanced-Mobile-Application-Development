import 'package:flutter/material.dart';
import 'package:student_hub/screens/Authentication/SignUpStep1/body.dart';
import 'package:student_hub/screens/Authentication/index.dart';

class SignupStep1Screen extends StatelessWidget {
  final Function(authWidgetKey) updateKey;

  const SignupStep1Screen({required this.updateKey});

  @override
  Widget build(BuildContext context) {
    return SignupStep1Widget(updateKey: updateKey);
  }
}
