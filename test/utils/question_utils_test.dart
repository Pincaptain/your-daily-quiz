import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/utils/question_utils.dart";

import "../model/question_mother.dart";

void main() {
  group("QuestionUtils", () {
    test("getTags should return a list of tags for a given question", () {
      final question = QuestionMother.createNicheQuestion();

      final tags = QuestionUtils.getTags(question);
      expect(tags, isNotEmpty);
      expect(tags, contains("Birds"));
      expect(tags, contains("Wildlife"));
      expect(tags, contains("Brazil And Latin America"));
      expect(tags, contains("Hard"));
      expect(tags, contains(QuestionUtils.niche));
    });

    test('getTags should return a list of tags without the "niche" tag if isNiche is false', () {
      final question = QuestionMother.createSimpleQuestion();

      final tags = QuestionUtils.getTags(question);
      expect(tags, isNotEmpty);
      expect(tags, contains("Mathematics"));
      expect(tags, contains("Kids And Adults"));
      expect(tags, contains("Easy"));
      expect(tags, isNot(contains(QuestionUtils.niche)));
    });

    test('getDifficultyText should return "Unknown" if difficulty is null or blank', () {
      final difficultyText = QuestionUtils.getDifficultyText(null);
      expect(difficultyText, equals(QuestionUtils.unknown));

      final blankDifficultyText = QuestionUtils.getDifficultyText("");
      expect(blankDifficultyText, equals(QuestionUtils.unknown));
    });

    test("getDifficultyText should return capitalized difficulty if it is not null or blank", () {
      final difficultyText = QuestionUtils.getDifficultyText("hard");
      expect(difficultyText, equals("Hard"));
    });
  });
}
