import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/signup_option_model.dart';
import 'package:student_hub/model/user_model.dart';
import 'package:student_hub/screens/Login/index.dart';
import 'package:student_hub/screens/SignUpStep1/signup_option_item.dart';

class SignupStep1Widget extends StatefulWidget {
  const SignupStep1Widget({Key? key}) : super(key: key);

  @override
  State<SignupStep1Widget> createState() => _SignupStep1WidgetState();
}

class _SignupStep1WidgetState extends State<SignupStep1Widget> {
  final List<SignUpOption> optionList = SignUpOption.optionList();

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
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: optionList.length,
                  itemBuilder: (context, index) {
                    final option = optionList[index];
                    return SignUpOptionItem(
                      signupOption: option,
                      onToDoChanged: _handleToDoChange,
                    );
                  },
                ),
              ),
              FractionallySizedBox( 
                widthFactor: 1, 
                child: ElevatedButton(
                  onPressed: () {
                    // Logic to create account
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: RichText(
                          textAlign: TextAlign.center, 
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

  void _handleToDoChange(SignUpOption todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}
