import "package:badges/badges.dart" as badges;
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:your_daily_quiz/bloc/quiz_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_state.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/widget/swap_question_widget.dart";

import "../model/daily_log_mother.dart";

class QuizBlocMock extends Mock implements QuizBloc {}

void main() {
  late QuizBloc quizBloc;

  setUp(() {
    quizBloc = QuizBlocMock();
  });

  group("SwapQuestionWidget", () {
    testWidgets("displays badge with correct number of available swaps", (tester) async {
      final DailyLog dailyLog = DailyLogMother.createSimpleDailyLog();
      when(() => quizBloc.state).thenAnswer((_) => LoadedQuizState(dailyLog: dailyLog));
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: quizBloc,
            child: const SwapQuestionWidget(),
          ),
        ),
      );

      final badge = find.byType(badges.Badge);
      expect(badge, findsOneWidget);
      final badgeContent = find.text("1");
      expect(badgeContent, findsOneWidget);
    });

    testWidgets("doesn't display badge when there are no available swaps", (tester) async {
      final DailyLog dailyLog = DailyLogMother.createDailyLogWithoutAvailableQuestionSwaps();
      when(() => quizBloc.state).thenAnswer((_) => LoadedQuizState(dailyLog: dailyLog));
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: quizBloc,
            child: const SwapQuestionWidget(),
          ),
        ),
      );

      final badge = find.byType(badges.Badge);
      expect(badge, findsNothing);
    });

    testWidgets("shows snackBar when swap button is pressed and no swaps are available", (tester) async {
      final DailyLog dailyLog = DailyLogMother.createDailyLogWithoutAvailableQuestionSwaps();
      when(() => quizBloc.state).thenAnswer((_) => LoadedQuizState(dailyLog: dailyLog));
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: quizBloc,
            child: const SwapQuestionWidget(),
          ),
        ),
      );

      final fab = find.byType(FloatingActionButton);
      await tester.tap(fab);
      await tester.pumpAndSettle();
      final snackBar = find.byType(SnackBar);
      expect(snackBar, findsOneWidget);
    });
  });
}
