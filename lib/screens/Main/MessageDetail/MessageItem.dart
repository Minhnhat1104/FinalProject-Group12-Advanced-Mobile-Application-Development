import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:student_hub/constants/colors.dart';

var userItem = (
  id: 1,
  fullname: 'Luis Pham',
  job: 'Senior frontend developer',
  createdDate: DateTime.now(),
  content:
      'Clear expectation about your project or delivables or some thing hahaha'
);

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(children: [
              Icon(
                Icons.account_circle,
                color: Colors.black87,
                size: 40.0,
              ),
              SizedBox(width: 12),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      userItem.fullname,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      DateFormat('yyyy-MM-dd').format(userItem.createdDate),
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: tdGrey),
                    ),
                  ]),
                  SizedBox(height: 8),
                  Text(
                    userItem.content,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ))
            ]),
          )
        ],
      ),
    );
  }
}
