import "package:equatable/equatable.dart";

abstract class QuizEvent extends Equatable {
  const QuizEvent();

  @override
  List<Object?> get props => [];
}

class GetDailyLogEvent extends QuizEvent {}

class SwapQuestionEvent extends QuizEvent {}
