import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:student_hub/constants/colors.dart';

var alertItem = (
  id: 1,
  message: 'You have submitted to join project "Javis - AI Copilot"',
  date: DateTime.now(),
  content:
      'Clear expectation about your project or delivables or some thing hahaha'
);

class AlertItem extends StatelessWidget {
  const AlertItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      Text(
                        alertItem.message,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        DateFormat('yyyy-MM-dd').format(alertItem.date),
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: tdGrey),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tdNeonBlue,
                              fixedSize: Size(150, 28),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Text(
                            'Join',
                            style: TextStyle(color: tdWhite),
                          )),
                    ],
                  ))
                ]),
          )
        ],
      ),
    );
  }
}
