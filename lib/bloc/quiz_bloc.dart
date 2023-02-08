import "package:flutter_bloc/flutter_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_event.dart";
import "package:your_daily_quiz/bloc/quiz_state.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/service/quiz_service.dart";

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuizService _quizService;

  QuizBloc(this._quizService) : super(InitialQuizState()) {
    on<GetDailyLogEvent>(_getDailyLog);
    on<SwapQuestionEvent>(_swapQuestion);
  }

  void _getDailyLog(final GetDailyLogEvent event, final Emitter<QuizState> emit) async {
    emit(LoadingQuizState());
    final DailyLog dailyLog = await _quizService.getDailyLog();
    emit(LoadedQuizState(dailyLog: dailyLog));
  }

  void _swapQuestion(final SwapQuestionEvent event, final Emitter<QuizState> emit) async {
    emit(LoadingQuizState());
    final DailyLog dailyLog = await _quizService.swapQuestion();
    emit(LoadedQuizState(dailyLog: dailyLog));
  }
}
