import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/proposal_model.dart';

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
                    size: 40, 
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
                          padding: EdgeInsets.symmetric(vertical: 8), 
                          child: Text(
                            'Message',
                            style: TextStyle(color: tdNeonBlue), 
                          ),
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
                            borderRadius: BorderRadius.circular(10), 
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Hire',
                            style: TextStyle(color: tdNeonBlue), 
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider( 
                color: const Color.fromARGB(255, 206, 206, 206), 
                thickness: 0.8, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}