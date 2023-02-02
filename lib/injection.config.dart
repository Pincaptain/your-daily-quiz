// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:your_daily_quiz/client/question_client.dart' as _i6;
import 'package:your_daily_quiz/repository/daily_log_repository.dart' as _i3;
import 'package:your_daily_quiz/service/daily_log_service.dart' as _i5;
import 'package:your_daily_quiz/service/question_service.dart' as _i8;
import 'package:your_daily_quiz/service/quiz_service.dart' as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DailyLogRepository>(
        () => _i3.DailyLogRepository(gh<_i4.BoxCollection>()));
    gh.factory<_i5.DailyLogService>(
        () => _i5.DailyLogService(gh<_i3.DailyLogRepository>()));
    gh.factory<_i6.QuestionClient>(() => _i6.QuestionClient(gh<_i7.Dio>()));
    gh.factory<_i8.QuestionService>(
        () => _i8.QuestionService(gh<_i6.QuestionClient>()));
    gh.factory<_i9.QuizService>(() => _i9.QuizService(
          gh<_i5.DailyLogService>(),
          gh<_i8.QuestionService>(),
        ));
    return this;
  }
}
