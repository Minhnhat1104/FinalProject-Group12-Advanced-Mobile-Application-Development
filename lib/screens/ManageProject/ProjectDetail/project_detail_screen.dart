import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/project_posting_model.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class DetailView extends StatelessWidget {
  final ProjectPostingModel projectPosting; 

  DetailView({required this.projectPosting});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Divider( // Add Divider widget
                color: const Color.fromARGB(255, 206, 206, 206), // Specify the color of the divider
                thickness: 0.6, // Specify the thickness of the divider
              ),
            SizedBox(height: 16),
            _buildDetailDescription(projectPosting),

            SizedBox(height: 16),
            Divider( // Add Divider widget
              color: const Color.fromARGB(255, 206, 206, 206), // Specify the color of the divider
              thickness: 0.6, // Specify the thickness of the divider
            ),
            SizedBox(height: 16),

            _buildJobScope(projectPosting),

            _buildRequiredPeople(projectPosting),

            Spacer(),
            _buildPostJobButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailDescription(ProjectPostingModel projectPosting) {
    List<String> requirementsList = projectPosting.requirements.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Students are looking for',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: requirementsList.map((requirement) => Text('• $requirement')).toList(),
        ),
      ],
    );
  }

  Widget _buildJobScope(ProjectPostingModel projectPosting) {
    return Row(
      children: [
        Icon(Icons.alarm), // Clock icon
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project scope',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('      •  ${projectPosting.projectScope}'),
          ],
        ),
      ],
    );
  }

  Widget _buildRequiredPeople(ProjectPostingModel projectPosting) {
    return Row(
      children: [
        Icon(Icons.people),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Students required',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('      •  ${projectPosting.studentRequired} students'),
          ],
        ),
      ],
    );
  }

  Widget _buildPostJobButton() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0, right: 16.0), // Adjust padding as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 180, // Adjust the width as needed
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: tdNeonBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              ),
              onPressed: () {
                // Action to perform when the button is pressed
                // Navigate to the screen to post a job
              },
              child: Text(
                'Post Job',
                style: TextStyle(
                  color: tdWhite,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
