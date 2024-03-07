import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/selected_option.dart';
import 'package:student_hub/model/signup_option_model.dart';
import 'package:student_hub/screens/Authentication/Login/index.dart';
import 'package:student_hub/screens/Authentication/SignUpStep1/signup_option_item.dart';
import 'package:student_hub/screens/Authentication/index.dart';

class SignupStep1Widget extends StatefulWidget {
  final Function(authWidgetKey) updateKey;

  SignupStep1Widget({required this.updateKey});

  @override
  State<SignupStep1Widget> createState() =>
      _SignupStep1WidgetState(updateKey: updateKey);
}

class _SignupStep1WidgetState extends State<SignupStep1Widget> {
  final List<SignUpOption> optionList = SignUpOption.optionList();
  final Function(authWidgetKey) updateKey;

  _SignupStep1WidgetState({required this.updateKey});

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
                        fontFamily: 'Roboto'),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: optionList.length,
                itemBuilder: (context, index) {
                  final option = optionList[index];
                  return SignUpOptionItem(
                    signupOption: option,
                    onToDoChanged: _handleToDoChange,
                  );
                },
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Logic to create account
                  updateKey(authWidgetKey.signupStep2);
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
              SizedBox(height: 30.0),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
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
                  SizedBox(height: 8.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleToDoChange(SignUpOption optionChoice) {
    setState(() {
      if (optionChoice.isSelected) {
        optionChoice.isSelected = false;
        SelectedOption.selectedOption = null;
      } else {
        optionChoice.isSelected = true;
        SelectedOption.selectedOption = optionChoice;
      }
    });
  }
}
