import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Main/main_dashboard_screen.dart';
import 'package:student_hub/screens/Main/main_screen.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class PostAProject4 extends StatefulWidget {
  const PostAProject4({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<PostAProject4> {
  final List<String> studentLookings = [
    'Clear expectation about your project or deliverables',
    'Clear expectation about your project or deliverables',
    'Clear expectation about your project or deliverables',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Container(
        padding: EdgeInsets.all(APP_PADDING_X),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "4/4",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    "Project Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Title of the job',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: tdGrey),
                      bottom: BorderSide(color: tdGrey))),
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Students are looking for',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  for (String _title in studentLookings)
                    Padding(
                      padding: EdgeInsets.only(left: 32),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.black,
                            size: 8.0,
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(_title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                )),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: tdNeonBlue,
                  size: 32.0,
                ),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Project scope',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.black,
                          size: 8.0,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          '3 to 6 month',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(
                  Icons.people_outline,
                  color: tdNeonBlue,
                  size: 32.0,
                ),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Student required',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.black,
                          size: 8.0,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          '6 students',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tdNeonBlue,
                        fixedSize: Size(150, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeDashboard()),
                      );
                    },
                    child: Text(
                      'Post job',
                      style: TextStyle(color: tdWhite, fontSize: 18),
                    )),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
