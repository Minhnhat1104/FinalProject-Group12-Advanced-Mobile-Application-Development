import 'package:flutter/material.dart';
import 'package:student_hub/constants/style.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 12),
            child: TextFormField(
              // The validator receives the text that the user has entered.
              decoration: inputOutlined('Search for projects'),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(999))),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        )
      ],
    );
  }
}
