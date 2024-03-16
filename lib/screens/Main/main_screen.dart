import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/screens/Main/main_dashboard_screen.dart';
import 'package:student_hub/screens/Main/main_messages_screen.dart';
import 'package:student_hub/screens/Main/main_notification_screen.dart';
import 'package:student_hub/screens/Main/main_project_screen.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';
import 'dart:developer' as developer;

/// Flutter code sample for [NavigationBar].

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationExample();
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  bool showFavoriteProject = false;

  void setShowFavoriteProject(bool newValue) {
    setState(() {
      showFavoriteProject = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    String title = showFavoriteProject ? 'Saved projects' : 'StudentHub';
    Function? onBack = showFavoriteProject
        ? () {
            setState(() {
              showFavoriteProject = false;
            });
          }
        : null;

    return Scaffold(
      appBar: HeaderNavBar(title: title, onBack: onBack),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        // indicatorColor: tdNeonBlue,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.web,
              color: tdNeonBlue,
            ),
            icon: Icon(Icons.web),
            label: 'Project',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month, color: tdNeonBlue),
            icon: Icon(Icons.calendar_month),
            label: 'Dashboard',
          ),
          NavigationDestination(
            selectedIcon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp, color: tdNeonBlue),
            ),
            icon: Badge(
              label: Text('2'),
              child: Icon(
                Icons.messenger_sharp,
              ),
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            selectedIcon: Badge(
                child: Icon(Icons.notifications_sharp, color: tdNeonBlue)),
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
        ],
      ),
      body: <Widget>[
        MainProject(
            setShowFavoriteProject: setShowFavoriteProject,
            showFavoriteProject: showFavoriteProject),
        MainDashboard(),
        MainMessages(),
        MainNotification(),
      ][currentPageIndex],
    );
  }
}
