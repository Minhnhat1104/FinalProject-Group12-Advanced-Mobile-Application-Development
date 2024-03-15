import 'package:flutter/material.dart';

enum NavigationDestinationLabel { alwayshow, alwayshow1, alwayshow2 }

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  NavigationDestinationLabel labelBehavior =
      NavigationDestinationLabel.alwayshow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10),
        OverflowBar(
          spacing: 6.0,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  labelBehavior = NavigationDestinationLabel.alwayshow;
                });
              },
              child: const Text('All projects'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  labelBehavior = NavigationDestinationLabel.alwayshow1;
                });
              },
              child: const Text('Working'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  labelBehavior = NavigationDestinationLabel.alwayshow2;
                });
              },
              child: const Text('Archieved'),
            ),
          ],
        ),
      ],
    );
  }
}
