// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionAdapter extends TypeAdapter<_$_Question> {
  @override
  final int typeId = 0;

  @override
  _$_Question read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Question(
      category: fields[0] as String,
      id: fields[1] as String,
      correctAnswer: fields[2] as String,
      incorrectAnswers: (fields[3] as List).cast<String>(),
      question: fields[4] as String,
      tags: (fields[5] as List).cast<String>(),
      type: fields[6] as String,
      difficulty: fields[7] as String?,
      regions: (fields[8] as List).cast<String>(),
      isNiche: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Question obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.category)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.correctAnswer)
      ..writeByte(4)
      ..write(obj.question)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.difficulty)
      ..writeByte(9)
      ..write(obj.isNiche)
      ..writeByte(3)
      ..write(obj.incorrectAnswers)
      ..writeByte(5)
      ..write(obj.tags)
      ..writeByte(8)
      ..write(obj.regions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      category: json['category'] as String,
      id: json['id'] as String,
      correctAnswer: json['correctAnswer'] as String,
      incorrectAnswers: (json['incorrectAnswers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      question: json['question'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      type: json['type'] as String,
      difficulty: json['difficulty'] as String?,
      regions:
          (json['regions'] as List<dynamic>).map((e) => e as String).toList(),
      isNiche: json['isNiche'] as bool,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'category': instance.category,
      'id': instance.id,
      'correctAnswer': instance.correctAnswer,
      'incorrectAnswers': instance.incorrectAnswers,
      'question': instance.question,
      'tags': instance.tags,
      'type': instance.type,
      'difficulty': instance.difficulty,
      'regions': instance.regions,
      'isNiche': instance.isNiche,
    };
