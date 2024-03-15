import 'package:flutter/material.dart';
import 'package:student_hub/screens/BrowseProject/ProjectList/index.dart';

class MainProject extends StatelessWidget {
  const MainProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      shadowColor: Colors.transparent,
      margin: EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: ProjectList(),
        ),
      ),
    );
  }
}
