import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:your_daily_quiz/bloc/quiz_bloc.dart';
import 'package:your_daily_quiz/bloc/quiz_event.dart';
import 'package:your_daily_quiz/bloc/quiz_state.dart';
import 'package:your_daily_quiz/injection.dart';
import 'package:your_daily_quiz/service/quiz_service.dart';
import 'package:your_daily_quiz/widget/question_widget.dart';

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  final RefreshController _refreshController = RefreshController(initialRefresh: true);
  final QuizBloc _quizBloc = QuizBloc(getIt<QuizService>());

  void _onRefresh() async {
    _quizBloc.add(GetDailyLogEvent());
    _refreshController.refreshCompleted();
  }

  void _onLoading() {
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Daily Quiz",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      drawer: const Drawer(),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: BlocProvider(
          create: (context) => _quizBloc,
          child: BlocBuilder<QuizBloc, QuizState>(builder: (context, state) {
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
          }),
        ),
      ),
    );
  }
}