import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:your_daily_quiz/enums/question_status.dart';
import 'package:your_daily_quiz/model/question.dart';

part 'daily_log.freezed.dart';
part 'daily_log.g.dart';

@freezed
class DailyLog with _$DailyLog {
  factory DailyLog({
    required final List<Question> questions,
    required final Question selectedQuestion,
    required final QuestionStatus questionStatus,
    required final DateTime createdDate
  }) = _DailyLog;

  factory DailyLog.fromJson(Map<String, Object?> json) => _$DailyLogFromJson(json);
}
