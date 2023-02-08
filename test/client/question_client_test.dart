import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";
import "package:your_daily_quiz/client/question_client.dart";
import "package:your_daily_quiz/model/question.dart";

void main() {
  group("QuestionClient", () {
    test("getQuestions should return a list of questions that is not empty", () async {
      final Dio dio = Dio();
      final QuestionClient questionClient = QuestionClient(dio);
      final response = await questionClient.getQuestions();

      expect(response, isA<List<Question>>());
      expect(response.isNotEmpty, true);
    });
  });
}
