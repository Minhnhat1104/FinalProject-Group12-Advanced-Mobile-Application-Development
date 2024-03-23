import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/project_posting_model.dart';
import 'package:student_hub/model/proposal_model.dart';
import 'package:student_hub/widgets/bottom_nav_widget.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';
import 'project_card.dart';
import 'project_operations.dart'; // Import the operations file

class Dashboard2 extends StatelessWidget {
  const Dashboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NavigationExample();
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key}) : super(key: key);

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 1;
  int currentDashboardIndex = 0;
  List<ProjectPostingModel> workingProjectPostings = [];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: HeaderNavBar(),
      bottomNavigationBar: BottomNavigationMenu(
        currentPageIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            currentDashboardIndex = 0;
          });
        },
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: [
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
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
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
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                              backgroundColor: currentDashboardIndex == 0 ? tdNeonBlue : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: Text(
                              'All Projects',
                              style: TextStyle(
                                color: currentDashboardIndex == 0 ? tdWhite : tdNeonBlue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                currentDashboardIndex = 1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: currentDashboardIndex == 1 ? tdNeonBlue : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: Text(
                              'Working',
                              style: TextStyle(
                                color: currentDashboardIndex == 1 ? tdWhite : tdNeonBlue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                currentDashboardIndex = 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: currentDashboardIndex == 2 ? tdNeonBlue : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: Text(
                              'Archived',
                              style: TextStyle(
                                color: currentDashboardIndex == 2 ? tdWhite : tdNeonBlue,
                                fontWeight: FontWeight.w500,
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
                        itemCount: projectPostings.length,
                        itemBuilder: (context, index) {
                          ProjectPostingModel posting = projectPostings[index];
                          final proposal = proposals[index];
                          return Column(
                            children: [
                              ProjectCard(
                                posting: posting,
                                proposal: proposal,
                                startWorkingProject: (posting) => startWorkingProject(context, posting, currentDashboardIndex, setState, workingProjectPostings),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Divider( 
                                  color: const Color.fromARGB(255, 206, 206, 206), 
                                  thickness: 0.8, 
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ] else if (currentDashboardIndex == 1) ...[
                    Expanded(
                      child: ListView.builder(
                        itemCount: workingProjectPostings.length,
                        itemBuilder: (context, index) {
                          ProjectPostingModel posting = workingProjectPostings[index];
                          Proposal proposal = proposals[index % proposals.length]; 
                          return Column(
                            children: [
                              ProjectCard(
                                posting: posting,
                                proposal: proposal,
                                startWorkingProject: (posting) => startWorkingProject(context, posting, currentDashboardIndex, setState, workingProjectPostings),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Divider( 
                                  color: const Color.fromARGB(255, 206, 206, 206), 
                                  thickness: 0.8, 
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
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
                      style: theme.textTheme.bodyLarge!.copyWith(color: theme.colorScheme.onPrimary),
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
                    style: theme.textTheme.bodyLarge!.copyWith(color: theme.colorScheme.onPrimary),
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
        ],
      ),
    );
  }
}
