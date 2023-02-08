import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/widget/tag_widget.dart";

void main() {
  group("TagWidget", () {
    testWidgets("displays tag value", (tester) async {
      const tagValue = "Mathematics";
      await tester.pumpWidget(
        const MaterialApp(
          home: TagWidget(value: tagValue),
        ),
      );

      expect(
        find.text(tagValue),
        findsOneWidget,
      );
    });
  });
}
