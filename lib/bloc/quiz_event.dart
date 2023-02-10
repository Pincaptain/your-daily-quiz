import "package:equatable/equatable.dart";

abstract class QuizEvent extends Equatable {
  const QuizEvent();

  @override
  List<Object?> get props => [];
}

class GetDailyLogEvent extends QuizEvent {}

class SwapQuestionEvent extends QuizEvent {}

class AnswerQuestionEvent extends QuizEvent {
  final String answer;

  const AnswerQuestionEvent({required this.answer});

  @override
  List<Object?> get props => [answer];
}
