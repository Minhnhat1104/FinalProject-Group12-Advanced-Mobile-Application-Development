import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Main/Projects/ProjectItem.dart';
import 'package:student_hub/screens/Main/Projects/Toolbar.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';
import 'package:student_hub/main.dart';

class Projects extends StatefulWidget {
  final bool showFavoriteProject;
  final void Function(bool nVal) setShowFavoriteProject;
  const Projects(
      {Key? key,
      required this.setShowFavoriteProject,
      required this.showFavoriteProject})
      : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          left: APP_PADDING_X, right: APP_PADDING_X, top: APP_PADDING_X),
      child: Column(
        children: [
          if (!widget.showFavoriteProject)
            Toolbar(
              onFavorite: () {
                widget.setShowFavoriteProject(true);
              },
            ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Column(
                children: !widget.showFavoriteProject
                    ? [
                        ProjectItem(),
                        ProjectItem(),
                        ProjectItem(),
                        ProjectItem()
                      ]
                    : [
                        ProjectItem(),
                        ProjectItem(),
                      ]),
          )
        ],
      ),
    );
  }
}
