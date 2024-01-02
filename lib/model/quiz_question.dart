class QuizQuestion {
  final String question;
  final List<String> options;

  const QuizQuestion(this.question, this.options);

  List<String> getShuffedOptions() {
    List<String> shuffledOptions = List.from(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
