import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/user_model.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class LoginWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
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
                      fontFamily: 'Roboto'
                    ),
                  ),
                ),
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;
                  User user = User(username: username, password: password);
                  // Here you can perform login logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: tdNeonBlue, 
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16, // Set font size
                    color: Colors.white, // Set text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
