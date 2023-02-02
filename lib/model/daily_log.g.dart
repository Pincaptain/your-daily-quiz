// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyLog _$$_DailyLogFromJson(Map<String, dynamic> json) => _$_DailyLog(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedQuestion:
          Question.fromJson(json['selectedQuestion'] as Map<String, dynamic>),
      questionStatus:
          $enumDecode(_$QuestionStatusEnumMap, json['questionStatus']),
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_DailyLogToJson(_$_DailyLog instance) =>
    <String, dynamic>{
      'questions': instance.questions.map((e) => e.toJson()).toList(),
      'selectedQuestion': instance.selectedQuestion.toJson(),
      'questionStatus': _$QuestionStatusEnumMap[instance.questionStatus]!,
      'createdDate': instance.createdDate.toIso8601String(),
    };

const _$QuestionStatusEnumMap = {
  QuestionStatus.unanswered: 'unanswered',
  QuestionStatus.correct: 'correct',
  QuestionStatus.incorrect: 'incorrect',
};
