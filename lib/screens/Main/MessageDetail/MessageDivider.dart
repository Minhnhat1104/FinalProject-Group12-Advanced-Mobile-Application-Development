import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';

class MessageDivider extends StatelessWidget {
  const MessageDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '6/6/2024',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: tdGrey),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
            child: Divider(
          thickness: 1,
          color: Colors.black,
        ))
      ],
    );
  }
}
