import 'package:hive/hive.dart';

part 'question_status.g.dart';

@HiveType(typeId: 2, adapterName: "QuestionStatusAdapter")
enum QuestionStatus {
  @HiveField(0)
  unanswered,
  @HiveField(1)
  correct,
  @HiveField(2)
  incorrect,
}
