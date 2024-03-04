import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/company_model.dart';
import 'package:student_hub/screens/Login/index.dart';

class SignupStep2Widget extends StatefulWidget {
  const SignupStep2Widget({Key? key}) : super(key: key);

  @override
  State<SignupStep2Widget> createState() => _SignupStep2WidgetState();
}

class _SignupStep2WidgetState extends State<SignupStep2Widget> {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isAgreed = false;

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
                    'Sign up as Company',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                  labelText: 'Fullname',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 182, 182, 182)),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Work email address',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 182, 182, 182)),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password (8 or more characters)',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 182, 182, 182)),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 18.0),
              Row(
                children: [
                  Checkbox(
                    value: isAgreed,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isAgreed = newValue ?? false;
                      });
                    },
                    side: BorderSide(color: tdNeonBlue),
                    activeColor: tdNeonBlue,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Yes, I understand and agree to StudentHub',
                    style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Text color of the label
                ),
                  ),
                ],
              ),
              SizedBox(height: 18.0),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    String fullname = fullnameController.text;
                    String email = emailController.text;
                    String password = passwordController.text;
                    Company company = Company(fullname: fullname, email: email, password: password);
                    // Handle login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tdNeonBlue,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    'Create my account',
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
                          
                        },
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Looking for a project? ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              TextSpan(
                                text: "Apply as student",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: tdNeonBlue,
                                  decoration: TextDecoration.underline,
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
