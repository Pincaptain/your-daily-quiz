import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String category,
    required String id,
    required String correctAnswer,
    required List<String> incorrectAnswers,
    required String question,
    required List<String> tags,
    required String type,
    required String? difficulty,
    required List<String> regions,
    required bool isNiche,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);
}
