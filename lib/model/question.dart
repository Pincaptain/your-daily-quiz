import "package:freezed_annotation/freezed_annotation.dart";
import "package:hive/hive.dart";

part "question.freezed.dart";
part "question.g.dart";

@freezed
class Question extends HiveObject with _$Question {
  Question._();

  @HiveType(typeId: 0, adapterName: "QuestionAdapter")
  factory Question({
    @HiveField(0) required final String category,
    @HiveField(1) required final String id,
    @HiveField(2) required final String correctAnswer,
    @HiveField(3) required final List<String> incorrectAnswers,
    @HiveField(4) required final String question,
    @HiveField(5) required final List<String> tags,
    @HiveField(6) required final String type,
    @HiveField(7) required final String? difficulty,
    @HiveField(8) required final List<String> regions,
    @HiveField(9) required final bool isNiche,
  }) = _Question;

  factory Question.fromJson(final Map<String, Object?> json) => _$QuestionFromJson(json);
}
