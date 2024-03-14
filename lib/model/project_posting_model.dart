class ProjectPostingModel {
  final String title;
  final String createdDate;
  final List<String> requirements;
  final int proposals;
  final int messages;
  final int hired;
  String projectStatus;

  ProjectPostingModel({
    required this.title,
    required this.createdDate,
    required this.requirements,
    required this.proposals,
    required this.messages,
    required this.hired,
    required this.projectStatus,
  });

  setProjectStatus(String status) {
    this.projectStatus = status;
  }
}

List<ProjectPostingModel> projectPostings = [
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 0,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
  ),
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 2,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
  ),
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 2,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
  ),
];
