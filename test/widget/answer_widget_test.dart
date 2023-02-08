import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/widget/answer_widget.dart";

void main() {
  group("AnswerWidget", () {
    testWidgets("displays answer", (tester) async {
      const answer = "Brazil";

      await tester.pumpWidget(
        const MaterialApp(
          home: AnswerWidget(answer: answer),
        ),
      );

      expect(find.text(answer), findsOneWidget);
    });

    testWidgets("has proper padding and margin", (tester) async {
      const answer = "Mexico";

      await tester.pumpWidget(
        const MaterialApp(
          home: AnswerWidget(answer: answer),
        ),
      );

      final Container container = tester.firstWidget(find.byType(Container));
      final EdgeInsetsGeometry? padding = container.padding;
      final EdgeInsetsGeometry? margin = container.margin;
      expect(padding, const EdgeInsets.symmetric(horizontal: 8));
      expect(margin, const EdgeInsets.only(bottom: 8));
    });

    testWidgets("has proper text style", (tester) async {
      const answer = "Guatemala";

      await tester.pumpWidget(
        const MaterialApp(
          home: AnswerWidget(answer: answer),
        ),
      );

      final Text text = tester.firstWidget(find.byType(Text));
      final TextStyle? textStyle = text.style;
      expect(textStyle, isNot(null));
      expect(textStyle!.fontSize, 20);
      expect(textStyle.fontWeight, FontWeight.w500);
      expect(text.textAlign, TextAlign.center);
    });
  });
}
