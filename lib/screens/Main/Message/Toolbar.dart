import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_hub/constants/style.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 12),
            child: TextFormField(
              // The validator receives the text that the user has entered.
              decoration: inputOutlined('Search'),
            ),
          ),
        ),
      ],
    );
  }
}
