import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/project_posting_model.dart';
import 'package:student_hub/model/proposal_model.dart';
import 'package:student_hub/screens/ManageProject/Dashboard/project_card_menu.dart';
import 'package:student_hub/screens/ManageProject/SendHireOffer/send_hire_offer_screen.dart';

class ProjectCard extends StatelessWidget {
  final ProjectPostingModel posting;
  final Proposal proposal;
  final Function(ProjectPostingModel) startWorkingProject;

  const ProjectCard({
    Key? key,
    required this.posting,
    required this.proposal,
    required this.startWorkingProject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProposalsView(selectedProposal: proposal),
          ),
        );
      },
      child: Card(
        elevation: 0,
        shadowColor: Colors.transparent,
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
                            showProjectCardMenu(context, startWorkingProject: startWorkingProject, posting: posting); // Call the menu function
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
                children: posting.requirements.split('\n').map((requirement) => Text('       • $requirement')).toList(),
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
      ),
    );
  }
}
