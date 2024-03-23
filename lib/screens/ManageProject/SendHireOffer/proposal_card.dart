import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/model/proposal_model.dart';

class ProposalCard extends StatefulWidget {
  final Proposal proposal;
  final Function sendHiredOffer; // Callback function to send hired offer

  const ProposalCard({
    required this.proposal,
    required this.sendHiredOffer,
  });

  @override
  _ProposalCardState createState() => _ProposalCardState();
}

class _ProposalCardState extends State<ProposalCard> {
  bool hiredOfferSent = false; // Track whether the offer has been sent

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
                      Text(widget.proposal.name),
                      SizedBox(height: 6),
                      Text(widget.proposal.title),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(widget.proposal.job),
                  Spacer(),
                  Text(widget.proposal.text),
                ],
              ),
              SizedBox(height: 16),
              Text(
                widget.proposal.description,
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
                        onPressed: () {
                          if (!hiredOfferSent) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(
                                    child: Text('Hired offer'),
                                  ),
                                  content: Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'Do you really want to send a hired offer for this project?',
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        widget.sendHiredOffer();
                                        setState(() {
                                          hiredOfferSent = true;
                                        });
                                        Navigator.of(context).pop(); 
                                      },
                                      child: Text('Send'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            hiredOfferSent ? 'Sent hired offer' : 'Hire', 
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