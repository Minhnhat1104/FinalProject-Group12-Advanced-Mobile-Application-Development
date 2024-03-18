import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/screens/Main/MessageDetail/index.dart';

var userItem = (
  id: 1,
  fullname: 'Luis Pham',
  job: 'Senior frontend developer',
  description:
      'Clear expectation about your project or delivables or some thing hahaha'
);

class UserItem extends StatelessWidget {
  const UserItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MessageDetail()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration:
            BoxDecoration(border: Border(top: BorderSide(color: tdGrey))),
        child: Row(children: [
          Icon(
            Icons.account_circle,
            color: Colors.black87,
            size: 40.0,
          ),
          SizedBox(width: 16),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userItem.fullname,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                userItem.job,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.green),
              ),
              SizedBox(height: 8),
              Text(
                userItem.description,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
