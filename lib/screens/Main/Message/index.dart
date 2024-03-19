import 'package:flutter/material.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Main/Message/UserItem.dart';
import 'package:student_hub/screens/Main/Message/Toolbar.dart';

class MainMessages extends StatelessWidget {
  const MainMessages({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          left: APP_PADDING_X, right: APP_PADDING_X, top: APP_PADDING_X),
      child: Column(children: [
        Toolbar(),
        SizedBox(
          height: 16,
        ),
        UserItem(),
        UserItem(),
        UserItem(),
        UserItem(),
      ]),
    );
  }
}
