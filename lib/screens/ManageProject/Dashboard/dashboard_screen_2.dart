import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/project_posting_model.dart';
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
  List<ProjectPostingModel> workingProjectPostings = [];

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
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
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
                        return Card(
                          margin: EdgeInsets.all(8),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            posting.title,
                                            style: TextStyle(fontWeight: FontWeight.w500, color: tdGreen),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.more_horiz),
                                            color: tdNeonBlue,
                                            onPressed: () {
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
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  posting.createdDate,
                                  style: TextStyle(color: tdGrey),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Students are looking for',
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: posting.requirements.map((requirement) => Text('       • $requirement')).toList(),
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('${posting.proposals}'),
                                        Text('Proposals'),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('${posting.messages}'),
                                        Text('Messages'),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('${posting.hired}'),
                                        Text('Hired'),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
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

  void startWorkingProject(ProjectPostingModel posting) {
    setState(() {
      // Remove the selected project from the list of all projects
      projectPostings.remove(posting);
      // Add the selected project to the list of working projects
      workingProjectPostings.add(posting);
      // Switch to the "Working" page
      currentDashboardIndex = 1;
    });
  }
}
