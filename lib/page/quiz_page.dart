import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:pull_to_refresh/pull_to_refresh.dart";
import "package:your_daily_quiz/bloc/quiz_bloc.dart";
import "package:your_daily_quiz/bloc/quiz_event.dart";
import "package:your_daily_quiz/bloc/quiz_state.dart";
import "package:your_daily_quiz/injection.dart";
import "package:your_daily_quiz/service/quiz_service.dart";
import "package:your_daily_quiz/widget/question_widget.dart";
import "package:your_daily_quiz/widget/swap_question_widget.dart";

class QuizPage extends StatelessWidget {
  final RefreshController _refreshController = RefreshController(initialRefresh: true);
  final QuizBloc _quizBloc = QuizBloc(getIt<QuizService>());

  QuizPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final BuildContext context) => _quizBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Your Daily Quiz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: const Drawer(),
        body: SmartRefresher(
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: BlocBuilder<QuizBloc, QuizState>(
            builder: (final BuildContext context, final QuizState state) {
              if (state is LoadedQuizState) {
                return QuestionWidget(question: state.dailyLog.selectedQuestion);
              }
              return const Center(
                child: SizedBox(
                  height: 64,
                  width: 64,
                  child: CircularProgressIndicator(
                    strokeWidth: 8,
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: const SwapQuestionWidget(),
      ),
    );
  }

  void _onRefresh() async {
    _quizBloc.add(GetDailyLogEvent());
    _refreshController.refreshCompleted();
  }

  void _onLoading() {
    _refreshController.loadComplete();
  }
}
