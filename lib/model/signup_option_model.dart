class SignUpOption {
  int id;
  String? optionText;
  bool isDone;

  SignUpOption({
    required this.id,
    required this.optionText,
    this.isDone = false,
  });

  static List<SignUpOption> optionList() {
    return [
      SignUpOption(id: 1, optionText: 'I am a company, find engineer for project'), 
      SignUpOption(id: 2, optionText: 'I am a company, find engineer for project'), 
    ];
  }
}