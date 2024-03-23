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
                Card(
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Text(
                                            'Active proposal (0)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Add more children here as needed
                                ],
                              ),
                            ),
                          ),          
                Expanded(
                  child: ListView.builder(
                    itemCount: projectPostings.length,
                    itemBuilder: (context, index) {
                      ProjectPostingModel posting = projectPostings[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Card(
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: EdgeInsets.all(8.0), // Adjust the padding as needed
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
                                  SizedBox(height: 18),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider( 
                                      color: const Color.fromARGB(255, 206, 206, 206), 
                                      thickness: 0.8, 
                                    ),
                                  ),
                                  SizedBox(height: 18),
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
                                    padding: const EdgeInsets.symmetric(horizontal: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: posting.requirements.split('\n').map((requirement) => Text('       • $requirement')).toList(),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                ],
                              ),
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
                    itemCount: projectPostings.length,
                    itemBuilder: (context, index) {
                      ProjectPostingModel posting = projectPostings[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: EdgeInsets.all(8.0), // Adjust the padding as needed
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                      'Time: ${posting.projectScope}, ${posting.studentRequired} students',
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
                                  SizedBox(height: 14),
                                ],
                              ),
                            ),
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
    );
  }
}
