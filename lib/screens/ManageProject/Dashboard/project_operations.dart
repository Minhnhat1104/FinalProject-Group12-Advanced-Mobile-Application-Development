import 'package:flutter/material.dart';
import 'package:student_hub/model/project_posting_model.dart';

void startWorkingProject(BuildContext context, ProjectPostingModel posting, int currentDashboardIndex, Function setState, List<ProjectPostingModel> workingProjectPostings) {
  setState(() {
    if (posting.proposals == 0 && posting.projectStatus != "Working") {
      posting.projectStatus = 'Working';
      workingProjectPostings.add(posting);
      currentDashboardIndex = 1;
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Icon(Icons.warning, color: Colors.orange),
                SizedBox(width: 8),
                Text('Cannot Start Working'),
              ],
            ),
            content: Text(
                'This project still has proposals or is already being worked on. You cannot start working on it.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  });
}
