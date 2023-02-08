import "package:flutter_test/flutter_test.dart";
import "package:hive/hive.dart";
import "package:mocktail/mocktail.dart";
import "package:your_daily_quiz/constants.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/repository/daily_log_repository.dart";

import "../model/daily_log_mother.dart";

class BoxCollectionMock extends Mock implements BoxCollection {}

class CollectionBoxMock<T> extends Mock implements CollectionBox<T> {}

void main() {
  group("DailyLogRepository", () {
    late BoxCollectionMock boxCollectionMock;
    late DailyLogRepository repository;

    setUp(() {
      boxCollectionMock = BoxCollectionMock();
      repository = DailyLogRepository(boxCollectionMock);
    });

    test("saveDailyLog should open the box and put the daily log", () async {
      final CollectionBoxMock<DailyLog> boxMock = CollectionBoxMock<DailyLog>();
      final DateTime now = DateTime.now();
      final dailyLog = DailyLogMother.createSimpleDailyLog();
      final key = "${now.day}/${now.month}/${now.year}";
      when(() => boxCollectionMock.openBox<DailyLog>(dailyLogBoxName))
          .thenAnswer((_) => Future.value(boxMock));
      when(() => boxMock.put(key, dailyLog)).thenAnswer((_) => Future.value(null));

      final savedDailyLog = await repository.saveDailyLog(dailyLog);

      verify(() => boxMock.put(key, dailyLog));
      expect(savedDailyLog, dailyLog);
    });

    test("getDailyLog should open the box and get the daily log", () async {
      final CollectionBox<DailyLog> boxMock = CollectionBoxMock<DailyLog>();
      final DateTime now = DateTime.now();
      final dailyLog = DailyLogMother.createSimpleDailyLog();
      final key = "${now.day}/${now.month}/${now.year}";
      when(() => boxCollectionMock.openBox<DailyLog>(dailyLogBoxName))
          .thenAnswer((_) => Future.value(boxMock));
      when(() => boxMock.get(key)).thenAnswer((_) => Future.value(dailyLog));

      final retrievedDailyLog = await repository.getDailyLog();

      verify(() => boxMock.get(key));
      expect(retrievedDailyLog, dailyLog);
    });
  });
}
