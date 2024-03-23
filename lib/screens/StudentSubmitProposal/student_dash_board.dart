import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/project_posting_model.dart';
import 'package:student_hub/model/proposal_model.dart';
import 'package:student_hub/screens/ManageProject/SendHireOffer/send_hire_offer_screen.dart';

class StudentMainDashboard extends StatelessWidget {
  const StudentMainDashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return const NavigationExample();
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 1;
  int currentDashboardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 12), 
                                child: Text(
                                  'Submitted proposal (0)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            posting.title,
                                            style: TextStyle(fontWeight: FontWeight.w500, color: tdGreen),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical:2),
                                child: Text(
                                  posting.createdDate,
                                  style: TextStyle(color: tdGrey),
                                ),
                              ),
                              SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'Students are looking for',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: posting.requirements.split('\n').map((requirement) => Text('       • $requirement')).toList(),
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ] else if (currentDashboardIndex == 1) ...[
                // Your code for displaying working projects
              ] else if (currentDashboardIndex == 2) ...[
                Text('Archived'),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
