import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';

import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Home/index.dart';
import 'package:student_hub/screens/PostAProject/post_a_project_2.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class PostAProject1 extends StatelessWidget {
  const PostAProject1({super.key});

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
                          "1/4",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Let's start with a strong title",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Text(
                      "This helps your post stand out to the right students. It's the first thing they'll see, so make it impressive!"),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Write a title for your job',
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Example titles",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.circle,
                          size: 8,
                        ), // Thay thế bằng biểu tượng hoặc văn bản tùy chọn
                        title: Text(
                          'Build responsive WordPress site with booking/pament functionality',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.circle,
                          size: 8,
                        ),
                        title: Text(
                          'Facebook ad specialist need for product lauch',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Container(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostAProject2()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: tdNeonBlue,
                          fixedSize: Size(150, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Next: Scope',
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
