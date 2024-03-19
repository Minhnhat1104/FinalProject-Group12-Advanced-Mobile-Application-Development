import 'package:student_hub/model/proposal_model.dart';

class ProjectPostingModel {
  final String title;
  final String createdDate;
  final String requirements;
  final int proposals;
  final int messages;
  final int hired;
  String projectStatus;
  String projectScope;
  int studentRequired;
  List<Proposal> proposalsList; // Add this line

  ProjectPostingModel({
    required this.title,
    required this.createdDate,
    required this.requirements,
    required this.proposals,
    required this.messages,
    required this.hired,
    required this.projectStatus,
    required this.projectScope,
    required this.studentRequired,
    required this.proposalsList, // Add this line
  });

  setProjectStatus(String status) {
    this.projectStatus = status;
  }

  setProjectScope(String scope) {
    this.projectScope = projectScope;
  }

  setStudentRequired(int studentRequired) {
    this.studentRequired = studentRequired;
  }
}

List<ProjectPostingModel> projectPostings = [
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: 'Clear expectation about your project or deliverables\n'
        'The skills required for your project\n'
        'Detail about your project',
    proposals: 0,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
    projectScope: '3 to 6 months',
    studentRequired: 6,
    proposalsList: [], // Add an empty list of proposals
  ),
  ProjectPostingModel(
    title: 'Backend Engineer (Startup)',
    createdDate: 'Created 3 days ago',
    requirements: 'Clear expectation about your project or deliverables\n'
        'The skills required for your project\n'
        'Detail about your project',
    proposals: 3,
    messages: 10,
    hired: 1,
    projectStatus: 'In Progress', 
    projectScope: '2 to 4 months',
    studentRequired: 4,
    proposalsList: [
      Proposal(
        name: 'John Doe',
        title: 'Senior Developer',
        job: 'Backend Engineer',
        text: 'Great opportunity!',
        description: 'I am highly interested in working on this project. I have extensive experience in backend development.',
      ),
      Proposal(
        name: 'Alice Smith',
        title: 'Junior Developer',
        job: 'Software Engineer',
        text: 'Excited to contribute!',
        description: 'I am a motivated developer eager to learn and contribute to meaningful projects.',
      ),
    ],
  ),
  // Add more ProjectPostingModel instances here...
];
