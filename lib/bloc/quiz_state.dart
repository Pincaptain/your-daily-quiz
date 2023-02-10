import "package:equatable/equatable.dart";
import "package:your_daily_quiz/enums/question_status.dart";
import "package:your_daily_quiz/model/daily_log.dart";

abstract class QuizState extends Equatable {
  const QuizState();

  @override
  List<Object> get props => [];
}

class InitialQuizState extends QuizState {}

class LoadingQuizState extends QuizState {}

class LoadedQuizState extends QuizState {
  final DailyLog dailyLog;

  const LoadedQuizState({required this.dailyLog});

  bool isAnswered() {
    return dailyLog.questionStatus != QuestionStatus.unanswered;
  }

  bool isAnsweredCorrectly() {
    return dailyLog.questionStatus == QuestionStatus.correct;
  }

  @override
  List<Object> get props => [dailyLog];
}
