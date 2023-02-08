import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/widget/question_widget.dart";

import "../model/question_mother.dart";

void main() {
  group("QuestionWidget", () {
    testWidgets("displays question and its answers", (WidgetTester tester) async {
      final question = QuestionMother.createSimpleQuestion();
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: QuestionWidget(question: question),
        ),
      ));

      expect(find.text("What is 1 + 1?"), findsOneWidget);
      expect(find.text("2"), findsOneWidget);
      expect(find.text("3"), findsOneWidget);
      expect(find.text("4"), findsOneWidget);
      expect(find.text("123"), findsOneWidget);
    });
  });
}
