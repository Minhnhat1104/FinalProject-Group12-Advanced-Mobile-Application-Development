class ProjectPostingModel {
  final String title;
  final String createdDate;
  final List<String> requirements;
  final int proposals;
  final int messages;
  final int hired;

  ProjectPostingModel({
    required this.title,
    required this.createdDate,
    required this.requirements,
    required this.proposals,
    required this.messages,
    required this.hired,
  });
}

// Define a list of job postings
List<ProjectPostingModel> jobPostings = [
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 0,
    messages: 8,
    hired: 2,
  ),
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 2,
    messages: 8,
    hired: 2,
  ),
  ProjectPostingModel(
    title: 'Senior Frontend Developer (Fintech)',
    createdDate: 'Created 5 days ago',
    requirements: ['Clear expectation about your project or deliverables'],
    proposals: 2,
    messages: 8,
    hired: 2,
  ),
  // Add more job postings as needed
];
