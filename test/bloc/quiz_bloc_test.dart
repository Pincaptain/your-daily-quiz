import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:your_daily_quiz/bloc/quiz_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_event.dart";
import "package:your_daily_quiz/bloc/quiz_state.dart";
import "package:your_daily_quiz/service/quiz_service.dart";

import "../model/daily_log_mother.dart";

class MockQuizService extends Mock implements QuizService {}

void main() {
  late QuizBloc bloc;
  late MockQuizService mockQuizService;

  setUp(() {
    mockQuizService = MockQuizService();
    bloc = QuizBloc(mockQuizService);
  });

  test("Initial state should be InitialQuizState", () {
    expect(bloc.state, equals(InitialQuizState()));
  });

  group("GetDailyLogEvent", () {
    final dailyLog = DailyLogMother.createSimpleDailyLog();

    test("GetDailyLogEvent emits states in correct order", () {
      when(() => mockQuizService.getDailyLog()).thenAnswer((_) async => dailyLog);
      final expectedStates = [
        LoadingQuizState(),
        LoadedQuizState(dailyLog: dailyLog),
      ];
      expectLater(
        bloc.stream,
        emitsInOrder(expectedStates),
      );
      bloc.add(GetDailyLogEvent());
    });
  });

  group("SwapQuestionEvent", () {
    final dailyLog = DailyLogMother.createSimpleDailyLog();

    test("SwapQuestionEvent emits states in correct order", () {
      when(() => mockQuizService.swapQuestion()).thenAnswer((_) async => dailyLog);
      final expectedStates = [
        LoadingQuizState(),
        LoadedQuizState(dailyLog: dailyLog),
      ];
      expectLater(
        bloc.stream,
        emitsInOrder(expectedStates),
      );
      bloc.add(SwapQuestionEvent());
    });
  });
}
