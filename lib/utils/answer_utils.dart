class AnswerUtils {
  static List<String> getAllAnswers(List<String> incorrectAnswers, String correctAnswer) {
    List<String> allAnswers = [];
    allAnswers.addAll(incorrectAnswers);
    allAnswers.add(correctAnswer);
    allAnswers.shuffle();
    return allAnswers;
  }
}
