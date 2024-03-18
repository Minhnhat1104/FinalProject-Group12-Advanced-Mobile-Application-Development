import 'package:flutter/material.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Main/Alerts/AlertItem.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(APP_PADDING_X),
        child: Column(
          children: [
            AlertItem(),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            AlertItem(),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            AlertItem(),
          ],
        ),
      ),
    );
  }
}
