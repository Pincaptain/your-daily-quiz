import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:your_daily_quiz/client/question_client.dart";
import "package:your_daily_quiz/model/question.dart";
import "package:your_daily_quiz/service/question_service.dart";

import "../model/question_mother.dart";

class MockQuestionClient extends Mock implements QuestionClient {}

void main() {
  group("QuestionService", () {
    late QuestionClient questionClient;
    late QuestionService questionService;

    setUp(() {
      questionClient = MockQuestionClient();
      questionService = QuestionService(questionClient);
    });

    test("getQuestions should return questions from questionClient", () async {
      final List<Question> questions = [QuestionMother.createSimpleQuestion()];
      when(() => questionClient.getQuestions()).thenAnswer((_) async => questions);

      final result = await questionService.getQuestions();

      expect(result, questions);
      verify(() => questionClient.getQuestions()).called(1);
    });
  });
}
