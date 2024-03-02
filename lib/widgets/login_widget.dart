import 'package:flutter/material.dart';
import 'package:student_hub/model/user_model.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class LoginWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
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
            SizedBox(height: 16.0),
            ElevatedButton( 
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;
                User user = User(username: username, password: password);
                // Here you can perform login logic
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
