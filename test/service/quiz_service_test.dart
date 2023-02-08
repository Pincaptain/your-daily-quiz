import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/model/question.dart";
import "package:your_daily_quiz/service/daily_log_service.dart";
import "package:your_daily_quiz/service/question_service.dart";
import "package:your_daily_quiz/service/quiz_service.dart";

import "../model/daily_log_mother.dart";

class MockDailyLogService extends Mock implements DailyLogService {}

class MockQuestionService extends Mock implements QuestionService {}

void main() {
  group("QuizService", () {
    late DailyLogService dailyLogService;
    late QuestionService questionService;
    late QuizService quizService;

    setUp(() {
      dailyLogService = MockDailyLogService();
      questionService = MockQuestionService();
      quizService = QuizService(dailyLogService, questionService);
    });

    test("getDailyLog should return dailyLog if already created", () async {
      final DailyLog dailyLog = DailyLogMother.createSimpleDailyLog();
      when(() => dailyLogService.getDailyLog()).thenAnswer((_) => Future.value(dailyLog));

      final result = await quizService.getDailyLog();
      expect(result, dailyLog);
      verify(() => dailyLogService.getDailyLog());
      verifyNever(() => questionService.getQuestions());
      verifyNever(() => dailyLogService.createDailyLog(any()));
    });

    test("getDailyLog should create new dailyLog if not created", () async {
      final DailyLog dailyLog = DailyLogMother.createDefaultDailyLog();
      final List<Question> questions = dailyLog.questions;
      when(() => dailyLogService.getDailyLog()).thenAnswer((_) => Future.value(null));
      when(() => questionService.getQuestions()).thenAnswer((_) => Future.value(questions));
      when(() => dailyLogService.createDailyLog(questions))
          .thenAnswer((_) => Future.value(dailyLog));

      final result = await quizService.getDailyLog();
      expect(result, dailyLog);
      verify(() => dailyLogService.getDailyLog());
      verify(() => questionService.getQuestions());
      verify(() => dailyLogService.createDailyLog(questions));
    });

    test("swapQuestion() calls swapQuestion() on dailyLogService", () async {
      final DailyLog dailyLog = DailyLogMother.createSimpleDailyLog();
      when(() => dailyLogService.swapQuestion()).thenAnswer((_) => Future.value(dailyLog));

      final result = await quizService.swapQuestion();
      expect(result, dailyLog);
      verify(() => dailyLogService.swapQuestion());
    });
  });
}
