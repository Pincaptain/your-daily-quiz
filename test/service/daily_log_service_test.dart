import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/model/question.dart";
import "package:your_daily_quiz/repository/daily_log_repository.dart";
import "package:your_daily_quiz/service/daily_log_service.dart";

import "../model/daily_log_mother.dart";

class MockDailyLogRepository extends Mock implements DailyLogRepository {}

void main() {
  group("DailyLogService", () {
    late DailyLogRepository dailyLogRepository;
    late DailyLogService dailyLogService;

    setUp(() {
      dailyLogRepository = MockDailyLogRepository();
      dailyLogService = DailyLogService(dailyLogRepository);
      registerFallbackValue(DailyLogMother.createDefaultDailyLog());
    });

    test("createDailyLog should create daily log with default available question swaps", () async {
      final DailyLog dailyLog = DailyLogMother.createDefaultDailyLog();
      final List<Question> questions = dailyLog.questions;
      when(() => dailyLogRepository.saveDailyLog(dailyLog)).thenAnswer((_) async => dailyLog);

      final result = await dailyLogService.createDailyLog(questions);

      expect(result, dailyLog);
      verify(() => dailyLogRepository.saveDailyLog(dailyLog)).called(1);
    });

    test("getDailyLog should return the daily log", () async {
      final DailyLog dailyLog = DailyLogMother.createSimpleDailyLog();
      when(() => dailyLogRepository.getDailyLog()).thenAnswer((_) async => dailyLog);

      final result = await dailyLogService.getDailyLog();

      expect(result, dailyLog);
      verify(() => dailyLogRepository.getDailyLog()).called(1);
    });

    test("swapQuestion should swap the selected question if daily log exists", () async {
      DailyLog dailyLog = DailyLogMother.createSimpleDailyLog();
      when(() => dailyLogRepository.getDailyLog()).thenAnswer((_) async => dailyLog);
      when(() => dailyLogRepository.saveDailyLog(any()))
          .thenAnswer((invocation) async => invocation.positionalArguments.first as DailyLog);

      final result = await dailyLogService.swapQuestion();

      expect(result.selectedQuestion, isNot(dailyLog.selectedQuestion));
      verify(() => dailyLogRepository.getDailyLog()).called(1);
      verify(() => dailyLogRepository.saveDailyLog(any())).called(1);
    });
  });
}
