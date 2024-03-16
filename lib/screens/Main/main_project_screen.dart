import 'package:flutter/material.dart';
import 'package:student_hub/screens/BrowseProject/ProjectList/index.dart';

class MainProject extends StatelessWidget {
  final void Function(bool nVal) setShowFavoriteProject;
  final bool showFavoriteProject;

  const MainProject(
      {super.key,
      required this.setShowFavoriteProject,
      required this.showFavoriteProject});

  @override
  Widget build(BuildContext context) {
    return ProjectList(
        setShowFavoriteProject: setShowFavoriteProject,
        showFavoriteProject: showFavoriteProject);
  }
}
