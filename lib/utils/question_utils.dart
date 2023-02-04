import 'package:string_extensions/string_extensions.dart';
import 'package:your_daily_quiz/model/question.dart';

class QuestionUtils {
  static const niche = "Niche";
  static const unknown = "Unknown";

  static List<String> getTags(Question question) {
    List<String> tags = question.tags
        .map((tag) => tag.replaceAll("_", " "))
        .toList();
    tags.add(getDifficultyText(question.difficulty));
    tags.add(question.category);
    if (question.isNiche) {
      tags.add(niche);
    }

    return tags.map((tag) => tag.split(" "))
        .map((tagWords) => tagWords.map((tagWord) => tagWord.capitalize!).join(" "))
        .toSet()
        .toList();
  }

  static String getDifficultyText(String? difficulty) {
    if (difficulty.isBlank) {
      return unknown;
    }

    return difficulty.capitalize!;
  }
}
