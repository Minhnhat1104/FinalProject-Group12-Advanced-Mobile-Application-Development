import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/user_model.dart';
import 'package:student_hub/screens/Authentication/index.dart';
import 'package:student_hub/screens/Home/index.dart';
import 'package:student_hub/screens/Authentication/SignUpStep1/index.dart';

class LoginWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final Function(authWidgetKey) updateKey;

  LoginWidget({required this.updateKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: tdNeonBlue,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Center(
                  child: Text(
                    'Login with StudentHub',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username or email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 182, 182, 182)),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 182, 182, 182)),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 30.0),
              FractionallySizedBox(
                widthFactor: 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    String username = usernameController.text;
                    String password = passwordController.text;
                    User user = User(username: username, password: password);
                    // Handle login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tdNeonBlue,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Don't have an Student Hub account?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[500],
                            ),
                            textAlign:
                                TextAlign.center, // Align text to the center
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      margin: EdgeInsets.only(top: 12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle sign-up button press
                          updateKey(authWidgetKey.signupStep1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          minimumSize: Size(200, 50),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
