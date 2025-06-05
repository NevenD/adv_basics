class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  get shuffledAnswers {
    final shuffledList = List.of(answers); // Create a copy of the answers list
    shuffledList.shuffle();
    return shuffledList;
  }
}
