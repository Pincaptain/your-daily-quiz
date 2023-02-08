import "dart:math";

import "package:injectable/injectable.dart";
import "package:your_daily_quiz/enums/question_status.dart";
import "package:your_daily_quiz/exception/illegal_state_exception.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/model/question.dart";
import "package:your_daily_quiz/repository/daily_log_repository.dart";

@injectable
class DailyLogService {
  static const int defaultAvailableQuestionSwaps = 5;

  final DailyLogRepository _dailyLogRepository;

  DailyLogService(this._dailyLogRepository);

  Future<DailyLog> createDailyLog(final List<Question> questions) async {
    final DailyLog newDailyLog = DailyLog(
      questions: questions,
      selectedQuestion: questions.first,
      questionStatus: QuestionStatus.unanswered,
      availableQuestionSwaps: defaultAvailableQuestionSwaps,
    );

    return await _dailyLogRepository.saveDailyLog(newDailyLog);
  }

  Future<DailyLog?> getDailyLog() async {
    return _dailyLogRepository.getDailyLog();
  }

  Future<DailyLog> swapQuestion() async {
    final DailyLog? dailyLog = await getDailyLog();

    if (dailyLog == null) {
      throw IllegalStateException(message: "Cannot swap question if no daily log exists for today");
    }

    final List<Question> filteredQuestions = dailyLog.questions
        .where((question) => question.id != dailyLog.selectedQuestion.id)
        .toList();
    final Random random = Random();
    final Question selectedQuestion = filteredQuestions[random.nextInt(filteredQuestions.length)];
    final int availableQuestionSwaps = dailyLog.availableQuestionSwaps - 1;
    final DailyLog newDailyLog = DailyLog(
      questions: dailyLog.questions,
      selectedQuestion: selectedQuestion,
      questionStatus: dailyLog.questionStatus,
      availableQuestionSwaps: availableQuestionSwaps,
    );

    return await _dailyLogRepository.saveDailyLog(newDailyLog);
  }
}
