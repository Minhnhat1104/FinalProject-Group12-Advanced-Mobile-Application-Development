import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';

import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/BrowseProject/ProjectDetail/index.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class PostAProject3 extends StatelessWidget {
  const PostAProject3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderNavBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: APP_PADDING_X),
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 8, 12),
                    child: Row(
                      children: [
                        Text(
                          "3/4",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 16),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Text(
                            "Next, provide project description",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.visible,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Students are looking for",
                    style: TextStyle(fontSize: 16),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                        leading: Icon(
                          Icons.circle,
                          size: 8,
                        ), // Thay thế bằng biểu tượng hoặc văn bản tùy chọn
                        title: Text(
                          'Clear expectation about your project or deliverables',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        leading: Icon(
                          Icons.circle,
                          size: 8,
                        ),
                        title: Text(
                          'The skills required for your project',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        leading: Icon(
                          Icons.circle,
                          size: 8,
                        ),
                        title: Text(
                          'Detail about your project',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Describle your project",
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Write a title for your job',
                    ),
                    maxLines: 5,
                  ),
                  SizedBox(height: 16),
                  Container(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProjectDetail()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: tdNeonBlue,
                          fixedSize: Size(200, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Review your post',
                        style: TextStyle(
                            color: tdWhite, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
