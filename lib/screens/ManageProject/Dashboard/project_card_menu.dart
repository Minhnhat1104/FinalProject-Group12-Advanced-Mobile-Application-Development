import 'package:flutter/material.dart';
import 'package:student_hub/model/project_posting_model.dart';

void showProjectCardMenu(BuildContext context, {required Function(ProjectPostingModel) startWorkingProject, required ProjectPostingModel posting}) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
    ),
    builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('View proposals'),
              onTap: () {
                // Handle view proposals action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('View messages'),
              onTap: () {
                // Handle view messages action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('View hired'),
              onTap: () {
                // Handle view hired action
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.visibility),
              title: Text('View job posting'),
              onTap: () {
                // Handle view job posting action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit posting'),
              onTap: () {
                // Handle edit posting action
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Start working this project'),
              onTap: () {
                // Handle start working action
                Navigator.pop(context);
                startWorkingProject(posting);
              },
            ),
          ],
        ),
      );
    },
  );
}
