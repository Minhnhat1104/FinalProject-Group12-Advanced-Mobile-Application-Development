import 'package:flutter/material.dart';
import 'package:student_hub/screens/Authentication/Login/index.dart';
import 'package:student_hub/screens/Authentication/SignUpStep1/index.dart';
import 'package:student_hub/screens/Authentication/SignUpStep2/index.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

enum authWidgetKey { login, signupStep1, signupStep2 }

class _AuthenticationState extends State<Authentication> {
  int _currentIndex = 0;
  var authWidgets;
  var renderKey = authWidgetKey.login;

  var updateKey;

  @override
  void initState() {
    super.initState();
    renderKey = authWidgetKey.login;
    authWidgets = {
      authWidgetKey.login: LoginScreen(updateKey: (authWidgetKey key) {
        setState(() {
          renderKey = key;
        });
      }),
      authWidgetKey.signupStep1:
          SignupStep1Screen(updateKey: (authWidgetKey key) {
        setState(() {
          renderKey = key;
        });
      }),
      authWidgetKey.signupStep2: SignupStep2Screen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: authWidgets[renderKey],
    );
  }
}
