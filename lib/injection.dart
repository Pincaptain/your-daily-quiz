import "dart:io";

import "package:dio/dio.dart";
import "package:flutter/cupertino.dart";
import "package:get_it/get_it.dart";
import "package:hive/hive.dart";
import "package:injectable/injectable.dart";
import "package:path_provider/path_provider.dart";
import "package:your_daily_quiz/constants.dart";
import "package:your_daily_quiz/enums/question_status.dart";
import "package:your_daily_quiz/injection.config.dart";
import "package:your_daily_quiz/model/daily_log.dart";
import "package:your_daily_quiz/model/question.dart";

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(QuestionStatusAdapter());
  Hive.registerAdapter(QuestionAdapter());
  Hive.registerAdapter(DailyLogAdapter());
  getIt.registerSingleton(await BoxCollection.open(
    hiveName,
    {dailyLogBoxName},
    path: directory.path,
  ));
  getIt.registerSingleton<Dio>(Dio());
  getIt.init();
}
