import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/proposal_model.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class ProposalsView extends StatefulWidget {
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
                      child: Column(
                        children: [
                          SizedBox(height: 4),
                          Text(
                            'Proposals',
                            style: TextStyle(
                              color: currentDashboardIndex == 0 ? tdWhite : tdNeonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                      child: Column(
                        children: [
                          SizedBox(height: 4),
                          Text(
                            'Detail',
                            style: TextStyle(
                              color: currentDashboardIndex == 1 ? tdWhite : tdNeonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                      child: Column(
                        children: [
                          SizedBox(height: 4),
                          Text(
                            'Message',
                            style: TextStyle(
                              color: currentDashboardIndex == 2 ? tdWhite : tdNeonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                      child: Column(
                        children: [
                          SizedBox(height: 4),
                          Text(
                            'Hired',
                            style: TextStyle(
                              color: currentDashboardIndex == 3 ? tdWhite : tdNeonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
              Text('Detail'),
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

class ProposalCard extends StatelessWidget {
  final Proposal proposal;

  const ProposalCard({required this.proposal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: tdNeonBlue,
                    size: 40, // Adjust the size of the icon as needed
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(proposal.name),
                      SizedBox(height: 6),
                      Text(proposal.title),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(proposal.job),
                  Spacer(),
                  Text(proposal.text),
                ],
              ),
              SizedBox(height: 16),
              Text(
                proposal.description,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8), // Thêm lề dọc
                          child: Text('Message'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Giảm bán kính của nút
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8), // Thêm lề dọc
                          child: Text('Hire'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider( // Add Divider widget
                color: const Color.fromARGB(255, 206, 206, 206), // Specify the color of the divider
                thickness: 0.8, // Specify the thickness of the divider
              ),
            ],
          ),
        ),
      ),
    );
  }
}