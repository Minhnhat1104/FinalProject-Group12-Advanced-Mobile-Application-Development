import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/BrowseProject/SavedProjectList/ProjectItem.dart';
import 'package:student_hub/screens/BrowseProject/SavedProjectList/Toolbar.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class SavedProjectList extends StatefulWidget {
  const SavedProjectList({Key? key}) : super(key: key);

  @override
  _SavedProjectListState createState() => _SavedProjectListState();
}

class _SavedProjectListState extends State<SavedProjectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          left: APP_PADDING_X, right: APP_PADDING_X, top: APP_PADDING_X),
      child: Column(
        children: [
          Toolbar(),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Column(children: [
              ProjectItem(),
              ProjectItem(),
              ProjectItem(),
              ProjectItem()
            ]),
          )
        ],
      ),
    );
  }
}
