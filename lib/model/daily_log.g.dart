// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DailyLogAdapter extends TypeAdapter<_$_DailyLog> {
  @override
  final int typeId = 1;

  @override
  _$_DailyLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_DailyLog(
      questions: (fields[0] as List).cast<Question>(),
      selectedQuestion: fields[1] as Question,
      questionStatus: fields[2] as QuestionStatus,
      availableQuestionSwaps: fields[3] as int,
      selectedAnswer: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_DailyLog obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.selectedQuestion)
      ..writeByte(2)
      ..write(obj.questionStatus)
      ..writeByte(3)
      ..write(obj.availableQuestionSwaps)
      ..writeByte(4)
      ..write(obj.selectedAnswer)
      ..writeByte(0)
      ..write(obj.questions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyLogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      availableQuestionSwaps: json['availableQuestionSwaps'] as int,
      selectedAnswer: json['selectedAnswer'] as String?,
    );

Map<String, dynamic> _$$_DailyLogToJson(_$_DailyLog instance) =>
    <String, dynamic>{
      'questions': instance.questions.map((e) => e.toJson()).toList(),
      'selectedQuestion': instance.selectedQuestion.toJson(),
      'questionStatus': _$QuestionStatusEnumMap[instance.questionStatus]!,
      'availableQuestionSwaps': instance.availableQuestionSwaps,
      'selectedAnswer': instance.selectedAnswer,
    };

const _$QuestionStatusEnumMap = {
  QuestionStatus.unanswered: 'unanswered',
  QuestionStatus.correct: 'correct',
  QuestionStatus.incorrect: 'incorrect',
};
