import "package:injectable/injectable.dart";
import "package:your_daily_quiz/client/question_client.dart";
import "package:your_daily_quiz/model/question.dart";

@injectable
class QuestionService {
  final QuestionClient _questionClient;

  QuestionService(this._questionClient);

  Future<List<Question>> getQuestions() {
    return _questionClient.getQuestions();
  }
}
