import "package:flutter/material.dart";
import "package:your_daily_quiz/injection.dart";
import "package:your_daily_quiz/page/quiz_page.dart";

void main() async {
  await configureDependencies();
  runApp(const YourDailyQuizApp());
}

class YourDailyQuizApp extends StatelessWidget {
  const YourDailyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Your Daily Quiz",
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: QuizPage(),
    );
  }
}
