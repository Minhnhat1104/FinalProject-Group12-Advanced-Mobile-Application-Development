import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class Dashboard2 extends StatelessWidget {
  const Dashboard2({super.key});

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
  int currentPageIndex = 1;
  int currentDashboardIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: HeaderNavBar(),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            currentDashboardIndex =
                0; 
          });
        },
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
        // Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Project page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        // Dashboard page
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height, // Set a finite height
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your projects',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tdNeonBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Post a project',
                          style: TextStyle(
                            color: tdWhite,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // New navigation bar for dashboard views
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16), // Adjust horizontal padding as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentDashboardIndex = 0;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16), // Adjust padding as needed
                          ),
                          child: Text(
                            'All Projects',
                            style: TextStyle(
                              color: Colors.white, // Change text color to white
                              fontWeight: FontWeight.w500, // Add font weight
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // Add space between buttons
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentDashboardIndex = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16), // Adjust padding as needed
                          ),
                          child: Text(
                            'Working',
                            style: TextStyle(
                              color: Colors.white, // Change text color to white
                              fontWeight: FontWeight.w500, // Add font weight
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // Add space between buttons
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentDashboardIndex = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16), // Adjust padding as needed
                          ),
                          child: Text(
                            'Archived',
                            style: TextStyle(
                              color: Colors.white, // Change text color to white
                              fontWeight: FontWeight.w500, // Add font weight
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (currentDashboardIndex == 0) ...[
                  Expanded(
                    child: ListView.builder(
                      itemCount: 50, // Adjust the number of projects as needed
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.all(8),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      // Change Expanded to Flexible
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(Icons.more_vert),
                                            onPressed: () {
                                              // Handle editing or showing more details
                                            },
                                          ),
                                          Text(
                                            'Senior Frontend Developer (Fintech)',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Students are looking for',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '- Clear expectation about your project or deliverables',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('2'),
                                        Text('Hired'),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('8'),
                                        Text('Message'),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('2 Proposals'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ] else if (currentDashboardIndex == 1) ...[
                  Text('Working'),
                ] else if (currentDashboardIndex == 2) ...[
                  Text('Archived'),
                ],
              ],
            ),
          ),
        ),
        // Messages page
        ListView.builder(
          reverse: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Hello',
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.onPrimary),
                  ),
                ),
              );
            }
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Hi!',
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.onPrimary),
                ),
              ),
            );
          },
        ),

        // Notifications page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),
      ][currentPageIndex],
    );
  }
}
