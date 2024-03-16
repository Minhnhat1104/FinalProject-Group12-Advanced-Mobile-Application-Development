import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/screens/BrowseProject/ProjectDetail/index.dart';

class ProjectItem extends StatelessWidget {
  ProjectItem({
    super.key,
  });

  final List<String> studentLookings = [
    'Clear expectation about your project or deliverables',
    'Clear expectation about your project or deliverables',
    'Clear expectation about your project or deliverables',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(color: tdGrey))),
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Created 3 days ago',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: tdGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProjectDetail()),
                      );
                    },
                    child: Text(
                      'Senior frontend developer (Fintech)',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.green),
                    ),
                  ),
                  Text(
                    'Time: 1-3 months, 6 students needed',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: tdGrey),
                  ),
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
                  Text(
                    'Proposals: Less than 5',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: tdGrey),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 80,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.pink,
                size: 24.0,
              ),
            )
          ]),
    );
  }
}
