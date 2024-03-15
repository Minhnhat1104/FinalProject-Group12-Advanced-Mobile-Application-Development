class Proposal {
  final String name;
  final String title;
  final String job;
  final String text;
  final String description;

  Proposal({
    required this.name,
    required this.title,
    required this.job,
    required this.text,
    required this.description,
  });
}

// Sample list of proposals
List<Proposal> proposals = [
  Proposal(
    name: 'Hung Le',
    title: '4th year student',
    job: 'Fullstack Engineer',
    text: 'Excellent',
    description:
        'I have gone through your project and it seems like a great project. I will commit for your project...',
  ),
  Proposal(
    name: 'Quan Nguyen',
    title: '3th year student',
    job: 'Backend Engineer',
    text: 'Excellent',
    description:
        'I have gone through your project and it seems like a great project. I will commit for your project...',
  ),
];