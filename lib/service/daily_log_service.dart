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

  Future<DailyLog> swapQuestion() async {
    final DailyLog dailyLog = await getDailyLog();
    final List<Question> nonSelectedQuestions = dailyLog.questions
        .where((question) => question.id != dailyLog.selectedQuestion.id)
        .toList();
    final Random random = Random();
    final int randomIndex = random.nextInt(nonSelectedQuestions.length);
    final Question selectedQuestion = nonSelectedQuestions[randomIndex];
    final int availableQuestionSwaps = dailyLog.availableQuestionSwaps - 1;
    final DailyLog updatedDailyLog = DailyLog(
      questions: dailyLog.questions,
      selectedQuestion: selectedQuestion,
      questionStatus: dailyLog.questionStatus,
      availableQuestionSwaps: availableQuestionSwaps,
    );

    return _dailyLogRepository.saveDailyLog(updatedDailyLog);
  }

  Future<DailyLog> answerQuestion(final String answer) async {
    final DailyLog dailyLog = await getDailyLog();
    final Question selectedQuestion = dailyLog.selectedQuestion;
    final QuestionStatus questionStatus = selectedQuestion.correctAnswer == answer
        ? QuestionStatus.correct
        : QuestionStatus.incorrect;
    final updatedDailyLog = DailyLog(
      questions: dailyLog.questions,
      selectedQuestion: selectedQuestion,
      questionStatus: questionStatus,
      availableQuestionSwaps: dailyLog.availableQuestionSwaps,
    );

    return _dailyLogRepository.saveDailyLog(updatedDailyLog);
  }

  Future<DailyLog> createDailyLog(final List<Question> questions) async {
    final DailyLog dailyLog = DailyLog(
      questions: questions,
      selectedQuestion: questions.first,
      questionStatus: QuestionStatus.unanswered,
      availableQuestionSwaps: defaultAvailableQuestionSwaps,
    );

    return _dailyLogRepository.saveDailyLog(dailyLog);
  }

  Future<DailyLog> getDailyLog() async {
    DailyLog? dailyLog = await _dailyLogRepository.getDailyLog();

    if (dailyLog == null) {
      throw IllegalStateException(message: "No question is created for this day");
    }

    return dailyLog;
  }

  Future<bool> isDailyLogCreated() async {
    return _dailyLogRepository.isDailyLogCreated();
  }
}
