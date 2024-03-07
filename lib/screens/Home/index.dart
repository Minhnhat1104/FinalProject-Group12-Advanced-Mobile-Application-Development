import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/screens/Authentication/Login/index.dart';
import 'package:student_hub/screens/Authentication/index.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Build your product with high-skilled student',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Find and onboard best skilled student for your product. Students works to gain experience & skills from real-world projects',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Authentication()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: tdNeonBlue,
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  'Company',
                  style: TextStyle(color: tdWhite),
                )),
            SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Authentication()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: tdNeonBlue,
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  'Student',
                  style: TextStyle(color: tdWhite),
                )),
            SizedBox(height: 24),
            Text(
              'StudentHub is university market place to connect highi-skilled student and company on a real world project',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
