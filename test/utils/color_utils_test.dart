import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/utils/color_utils.dart";

void main() {
  group("ColorUtils", () {
    test("getRandomColor should return a random color with opacity 1.0", () {
      final color = ColorUtils.getRandomColor();
      expect(color, isNotNull);
      expect(color.opacity, equals(1.0));
    });
  });
}
