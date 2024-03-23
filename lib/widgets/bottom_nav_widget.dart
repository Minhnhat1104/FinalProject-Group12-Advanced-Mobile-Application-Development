import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class BottomNavigationMenu extends StatelessWidget {
  final int currentPageIndex;
  final Function(int) onDestinationSelected;

  const BottomNavigationMenu({
    Key? key,
    required this.currentPageIndex,
    required this.onDestinationSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
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
    );
  }
}
