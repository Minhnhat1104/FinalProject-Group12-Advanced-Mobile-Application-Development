import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';

import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Home/index.dart';
import 'package:student_hub/screens/PostAProject/post_a_project_3.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

enum SingingCharacter { first, second }

class PostAProject2 extends StatefulWidget {
  const PostAProject2({super.key});

  @override
  _PostAProject2State createState() => _PostAProject2State();
}

class _PostAProject2State extends State<PostAProject2> {
  SingingCharacter? _character = SingingCharacter.first;

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
                        "2/4",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 16),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Text(
                          "Next, estimate the scope of your job Consider the size of your project and the timeline",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "How long will your project take?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text("1 to 3 months"),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.first,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text("3 to 6 months"),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.second,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  "How many students do you want for this project?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Numbers of students in the project',
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PostAProject3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tdNeonBlue,
                        fixedSize: Size(200, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Next: Description',
                      style: TextStyle(
                          color: tdWhite, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
