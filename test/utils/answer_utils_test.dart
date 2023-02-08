import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/utils/answer_utils.dart";

void main() {
  group("AnswerUtils", () {
    test("getAllAnswers should return all answers including correct answer", () {
      final incorrectAnswers = ["Mexico City", "Madrid"];
      const correctAnswer = "Lima";
      final allAnswers = AnswerUtils.getAllAnswers(incorrectAnswers, correctAnswer);
      expect(allAnswers, contains(correctAnswer));
      expect(allAnswers, hasLength(incorrectAnswers.length + 1));
    });
  });
}
