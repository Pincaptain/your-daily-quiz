import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:your_daily_quiz/constants.dart';
import 'package:your_daily_quiz/model/daily_log.dart';

@injectable
class DailyLogRepository {
  final BoxCollection _boxCollection;

  DailyLogRepository(this._boxCollection);

  Future<DailyLog> saveDailyLog(final DailyLog dailyLog) async {
    final CollectionBox<DailyLog> box = await _getBox();
    final String key = _getDailyLogKey();
    await box.put(key, dailyLog);
    return dailyLog;
  }

  Future<DailyLog?> getDailyLog() async {
    final CollectionBox<DailyLog> box = await _getBox();
    return await box.get(_getDailyLogKey());
  }

  Future<CollectionBox<DailyLog>> _getBox() async {
    return await _boxCollection.openBox<DailyLog>(dailyLogBoxName);
  }

  String _getDailyLogKey() {
    final DateTime now = DateTime.now();
    return "${now.day}/${now.month}/${now.year}";
  }
}
