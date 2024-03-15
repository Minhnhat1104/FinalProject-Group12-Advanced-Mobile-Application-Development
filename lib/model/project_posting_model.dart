class ProjectPostingModel {
  final String title;
  final String createdDate;
  final List<String> requirements;
  final int proposals;
  final int messages;
  final int hired;
  String projectStatus;
  String projectScope;
  int studentRequired;

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
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 0,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
    projectScope: '3 to 6 months',
    studentRequired: 6,
  ),
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 2,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
    projectScope: '3 to 6 months',
    studentRequired: 6,
  ),
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 2,
    messages: 8,
    hired: 2,
    projectStatus: 'Hiring', 
    projectScope: '3 to 6 months',
    studentRequired: 6,
  ),
];
