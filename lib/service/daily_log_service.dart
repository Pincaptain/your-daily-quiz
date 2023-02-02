import 'package:injectable/injectable.dart';
import 'package:your_daily_quiz/enums/question_status.dart';
import 'package:your_daily_quiz/model/daily_log.dart';
import 'package:your_daily_quiz/model/question.dart';
import 'package:your_daily_quiz/repository/daily_log_repository.dart';

@injectable
class DailyLogService {
  final DailyLogRepository _dailyLogRepository;

  DailyLogService(this._dailyLogRepository);

  Future<DailyLog> createDailyLog(final List<Question> questions) async {
    final DailyLog newDailyLog = DailyLog(
      questions: questions,
      selectedQuestion: questions.first,
      questionStatus: QuestionStatus.unanswered,
      createdDate: DateTime.now(),
    );
    await _dailyLogRepository.createDailyLog(newDailyLog);
    return newDailyLog;
  }

  Future<DailyLog?> getDailyLog() async {
    return _dailyLogRepository.getDailyLog();
  }
}
