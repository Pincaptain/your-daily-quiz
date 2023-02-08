import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/utils/snack_bar_utils.dart";

void main() {
  group("SnackBarUtils", () {
    test("Should create a SnackBar with a red background and white text", () {
      final snackBar = SnackBarUtils.buildErrorSnackBar("Error");
      expect(snackBar.backgroundColor, equals(Colors.red));
      expect(snackBar.content, isA<Text>());
      final text = snackBar.content as Text;
      expect(text.data, equals("Error"));
      expect(text.style!.color, equals(Colors.white));
    });
  });
}
