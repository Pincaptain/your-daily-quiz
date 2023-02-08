import "package:your_daily_quiz/enums/question_status.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/model/question.dart";

import "question_mother.dart";

class DailyLogMother {
  static DailyLog createSimpleDailyLog() {
    final Question firstQuestion = QuestionMother.createSimpleQuestion();
    final Question secondQuestion = QuestionMother.createNicheQuestion();
    return DailyLog(
      questions: [firstQuestion, secondQuestion],
      selectedQuestion: firstQuestion,
      questionStatus: QuestionStatus.unanswered,
      availableQuestionSwaps: 1,
    );
  }

  static DailyLog createDefaultDailyLog() {
    final Question firstQuestion = QuestionMother.createSimpleQuestion();
    final Question secondQuestion = QuestionMother.createNicheQuestion();
    return DailyLog(
      questions: [firstQuestion, secondQuestion],
      selectedQuestion: firstQuestion,
      questionStatus: QuestionStatus.unanswered,
      availableQuestionSwaps: 5,
    );
  }

  static DailyLog createDailyLogWithoutAvailableQuestionSwaps() {
    final Question firstQuestion = QuestionMother.createSimpleQuestion();
    final Question secondQuestion = QuestionMother.createNicheQuestion();
    return DailyLog(
      questions: [firstQuestion, secondQuestion],
      selectedQuestion: firstQuestion,
      questionStatus: QuestionStatus.unanswered,
      availableQuestionSwaps: 0,
    );
  }
}
