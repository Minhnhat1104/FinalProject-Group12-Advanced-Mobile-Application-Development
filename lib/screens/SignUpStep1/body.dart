import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/user_model.dart';
import 'package:student_hub/screens/Login/index.dart';


class SignupStep1Widget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    'Join as company or Student',
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username or email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
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
                    borderSide: BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 30.0),
              FractionallySizedBox( 
                widthFactor: 1, 
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
                    'Create account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the login page
                          // Replace `LoginPage()` with the actual login page widget
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: RichText(
                          textAlign: TextAlign.center, // Align text to the center
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account? ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: tdNeonBlue,
                                  decoration: TextDecoration.underline, // Add underline to the text
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
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
