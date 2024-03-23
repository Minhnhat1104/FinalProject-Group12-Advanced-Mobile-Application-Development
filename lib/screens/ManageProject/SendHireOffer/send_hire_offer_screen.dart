import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/project_posting_model.dart';
import 'package:student_hub/model/proposal_model.dart';
import 'package:student_hub/screens/ManageProject/ProjectDetail/project_detail_screen.dart';
import 'package:student_hub/screens/ManageProject/SendHireOffer/proposal_card.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class ProposalsView extends StatefulWidget {
  final Proposal selectedProposal;

  ProposalsView({required this.selectedProposal});
  @override
  _ProposalsViewState createState() => _ProposalsViewState();
}

class _ProposalsViewState extends State<ProposalsView> {
  int currentDashboardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                'Senior Frontend Developer (Fintech)',
                style: TextStyle(fontWeight: FontWeight.w600, color: tdGreen),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
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
                        minimumSize: Size(120, 40),
                      ),
                      child: Center(
                        child: Text(
                          'Proposals',
                          style: TextStyle(
                            color: currentDashboardIndex == 0 ? tdWhite : tdNeonBlue,
                            fontWeight: FontWeight.w500,
                          ),
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
                        minimumSize: Size(120, 40),
                      ),
                      child: Center(
                        child: Text(
                          'Detail',
                          style: TextStyle(
                            color: currentDashboardIndex == 1 ? tdWhite : tdNeonBlue,
                            fontWeight: FontWeight.w500,
                          ),
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
                        minimumSize: Size(120, 40),
                      ),
                      child: Center( 
                        child: Text(
                          'Message',
                          style: TextStyle(
                            color: currentDashboardIndex == 2 ? tdWhite : tdNeonBlue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentDashboardIndex = 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: currentDashboardIndex == 3 ? tdNeonBlue : null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        minimumSize: Size(120, 40),
                      ),
                      child: Center( 
                        child: Text(
                          'Hired',
                          style: TextStyle(
                            color: currentDashboardIndex == 3 ? tdWhite : tdNeonBlue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            if (currentDashboardIndex == 0) ...[
              Expanded(
                child: ListView.builder(
                  itemCount: proposals.length,
                  itemBuilder: (context, index) {
                    final proposal = proposals[index];
                    return ProposalCard(proposal: proposal);
                  },
                ),
              ),
            ] else if (currentDashboardIndex == 1) ...[
              Expanded(
                child: DetailView(projectPosting: projectPostings[0]),
              ),
            ] else if (currentDashboardIndex == 2) ...[
              Text('Message'),
            ] else if (currentDashboardIndex == 3) ...[
              Text('Hired'),
            ],
          ],
        ),
      ),
    );
  }
}

