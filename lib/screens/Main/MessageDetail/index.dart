import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Main/MessageDetail/MessageDivider.dart';
import 'package:student_hub/screens/Main/MessageDetail/MessageInput.dart';
import 'package:student_hub/screens/Main/MessageDetail/MessageItem.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class MessageDetail extends StatelessWidget {
  const MessageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(
          title: 'Luis Pham',
          onBack: () {
            Navigator.pop(context);
          },
          onMore: () {}),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(APP_PADDING_X),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              MessageDivider(),
              MessageItem(),
              MessageItem(),
              MessageItem(),
              MessageDivider(),
              MessageItem(),
            ],
          ),
        ),
        MessageInput(),
      ]),
    );
  }
}
