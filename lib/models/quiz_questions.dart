class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  getShuffledAnswers() {
    final shuffledList = List.of(answers); // Create a copy of the answers list
    shuffledList.shuffle();
    return shuffledList;
  }
}
