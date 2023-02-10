import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_event.dart";
import "package:your_daily_quiz/bloc/quiz_state.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/utils/snack_bar_utils.dart";

class AnswerWidget extends StatelessWidget {
  final String answer;

  const AnswerWidget({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(bottom: 8),
      child: BlocBuilder<QuizBloc, QuizState>(
          builder: (final BuildContext context, final QuizState state) {
        return FilledButton(
          onPressed: () => _onAnswer(context, state),
          style: _buildButtonStyle(context, state),
          child: Text(
            answer,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }

  void _onAnswer(final BuildContext context, final QuizState state) {
    if (state is LoadedQuizState) {
      if (!state.dailyLog.isAnswered()) {
        _answer(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBarUtils.buildInfoSnackBar("You've already answered your daily question!"));
      }
    }
  }

  void _answer(final BuildContext context) {
    QuizBloc quizBloc = context.read<QuizBloc>();
    quizBloc.add(AnswerQuestionEvent(answer: answer));
  }

  ButtonStyle _buildButtonStyle(final BuildContext context, final QuizState state) {
    if (state is LoadedQuizState) {
      final DailyLog dailyLog = state.dailyLog;
      final String correctAnswer = dailyLog.selectedQuestion.correctAnswer;
      if (answer == correctAnswer) {
        return const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.green),
        );
      }
    }

    return const ButtonStyle();
  }
}
