import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_daily_quiz/bloc/quiz_event.dart';
import 'package:your_daily_quiz/bloc/quiz_state.dart';
import 'package:your_daily_quiz/model/daily_log.dart';
import 'package:your_daily_quiz/service/quiz_service.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuizService _quizService;

  QuizBloc(this._quizService) : super(InitialQuizState()) {
    on<GetDailyLogEvent>(_getDailyLogEvent);
  }

  void _getDailyLogEvent(QuizEvent event, Emitter<QuizState> emit) async {
    emit(LoadingQuizState());
    DailyLog dailyLog = await _quizService.getDailyLog();
    emit(LoadedQuizState(dailyLog: dailyLog));
  }
}
