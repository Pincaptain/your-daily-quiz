import "package:freezed_annotation/freezed_annotation.dart";
import "package:hive/hive.dart";
import "package:your_daily_quiz/enums/question_status.dart";
import "package:your_daily_quiz/model/question.dart";

part "daily_log.freezed.dart";
part "daily_log.g.dart";

@freezed
class DailyLog extends HiveObject with _$DailyLog {
  DailyLog._();

  @HiveType(typeId: 1, adapterName: "DailyLogAdapter")
  factory DailyLog({
    @HiveField(0) required final List<Question> questions,
    @HiveField(1) required final Question selectedQuestion,
    @HiveField(2) required final QuestionStatus questionStatus,
    @HiveField(3) required final int availableQuestionSwaps,
    @HiveField(4) final String? selectedAnswer,
  }) = _DailyLog;

  bool isAnswered() {
    return questionStatus != QuestionStatus.unanswered;
  }

  factory DailyLog.fromJson(final Map<String, Object?> json) => _$DailyLogFromJson(json);
}
