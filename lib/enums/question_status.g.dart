// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionStatusAdapter extends TypeAdapter<QuestionStatus> {
  @override
  final int typeId = 2;

  @override
  QuestionStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return QuestionStatus.unanswered;
      case 1:
        return QuestionStatus.correct;
      case 2:
        return QuestionStatus.incorrect;
      default:
        return QuestionStatus.unanswered;
    }
  }

  @override
  void write(BinaryWriter writer, QuestionStatus obj) {
    switch (obj) {
      case QuestionStatus.unanswered:
        writer.writeByte(0);
        break;
      case QuestionStatus.correct:
        writer.writeByte(1);
        break;
      case QuestionStatus.incorrect:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
