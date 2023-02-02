import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:your_daily_quiz/model/question.dart';

part "question_client.g.dart";

@injectable
@RestApi(baseUrl: "https://the-trivia-api.com/api")
abstract class QuestionClient {
  @factoryMethod
  factory QuestionClient(Dio dio) = _QuestionClient;

  @GET("/questions")
  Future<List<Question>> getQuestions();
}
