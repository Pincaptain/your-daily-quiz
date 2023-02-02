import 'package:flutter/material.dart';
import 'package:your_daily_quiz/model/question.dart';
import 'package:your_daily_quiz/utils/answer_utils.dart';
import 'package:your_daily_quiz/utils/question_utils.dart';
import 'package:your_daily_quiz/widget/answer_widget.dart';
import 'package:your_daily_quiz/widget/tag_widget.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  late final List<String> tags;
  late final List<String> allAnswers;

  QuestionWidget({super.key, required this.question}) {
    tags = QuestionUtils.getTags(question);
    allAnswers = AnswerUtils.getAllAnswers(question.incorrectAnswers, question.correctAnswer);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
                return TagWidget(value: tags[index]);
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            alignment: Alignment.topCenter,
            child: Text(
              question.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: allAnswers.length,
              itemBuilder: (BuildContext context, int index) {
                return AnswerWidget(answer: allAnswers[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
