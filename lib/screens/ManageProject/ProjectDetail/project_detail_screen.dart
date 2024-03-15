import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top section: Detail description
            _buildDetailDescription(),

            SizedBox(height: 16), // Add space between sections

            // Middle section: Job scope
            _buildJobScope(),

            SizedBox(height: 16), // Add space between sections

            // Bottom section: Required people
            _buildRequiredPeople(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Students are looking for',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '- Clear expectation about your project or deliverables\n'
          '- The skills required for your project\n'
          '- Detail about your project',
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Widget _buildJobScope() {
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
            Text('3 to 6 months'),
          ],
        ),
      ],
    );
  }

  Widget _buildRequiredPeople() {
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
            Text('6 students'),
          ],
        ),
      ],
    );
  }
}
