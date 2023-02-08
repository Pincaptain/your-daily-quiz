import "package:badges/badges.dart" as badges;
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_event.dart";
import "package:your_daily_quiz/bloc/quiz_state.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/utils/snack_bar_utils.dart";

class SwapQuestionWidget extends StatelessWidget {
  const SwapQuestionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(
      builder: (final BuildContext context, final QuizState state) {
        return _buildSwapQuestionWidget(context, state);
      },
    );
  }

  Widget _buildSwapQuestionWidget(final BuildContext context, final QuizState state) {
    if (state is LoadedQuizState) {
      if (state.dailyLog.availableQuestionSwaps == 0) {
        return _buildFloatingActionButton(context, state);
      }
    }

    return badges.Badge(
      badgeAnimation: const badges.BadgeAnimation.slide(),
      badgeContent: _buildBadgeContent(context, state),
      badgeStyle: const badges.BadgeStyle(
        badgeColor: Colors.deepPurple,
      ),
      position: badges.BadgePosition.topStart(),
      child: _buildFloatingActionButton(context, state),
    );
  }

  Widget _buildBadgeContent(final BuildContext context, final QuizState state) {
    String availableQuestionSwaps = "?";

    if (state is LoadedQuizState) {
      availableQuestionSwaps = state.dailyLog.availableQuestionSwaps.toString();
    }

    return Text(
      availableQuestionSwaps,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildFloatingActionButton(final BuildContext context, final QuizState state) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      onPressed: () => _onSwapQuestion(context, state),
      tooltip: "Swap your question",
      child: const Icon(
        Icons.swap_vert_rounded,
        size: 32,
      ),
    );
  }

  void _onSwapQuestion(final BuildContext context, final QuizState state) {
    if (state is LoadedQuizState) {
      final DailyLog dailyLog = state.dailyLog;
      if (dailyLog.availableQuestionSwaps > 0) {
        _swapQuestion(context, dailyLog);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBarUtils.buildErrorSnackBar("Insufficient number of swaps available!"));
      }
    }
  }

  void _swapQuestion(final BuildContext context, final DailyLog dailyLog) {
    QuizBloc quizBloc = context.read<QuizBloc>();
    quizBloc.add(SwapQuestionEvent());
  }
}
