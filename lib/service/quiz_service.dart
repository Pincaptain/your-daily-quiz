import 'package:injectable/injectable.dart';
import 'package:your_daily_quiz/model/daily_log.dart';
import 'package:your_daily_quiz/model/question.dart';
import 'package:your_daily_quiz/service/daily_log_service.dart';
import 'package:your_daily_quiz/service/question_service.dart';

@injectable
class QuizService {
  final DailyLogService _dailyLogService;
  final QuestionService _questionService;

  QuizService(this._dailyLogService, this._questionService);

  Future<DailyLog> getDailyLog() async {
    final DailyLog? dailyLog = await _dailyLogService.getDailyLog();

    if (dailyLog != null) {
      return dailyLog;
    }

    final List<Question> questions = await _questionService.getQuestions();
    return await _dailyLogService.createDailyLog(questions);
  }

  Future<DailyLog> swapQuestion() async {
    return _dailyLogService.swapQuestion();
  }
}
