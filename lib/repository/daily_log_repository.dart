import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:your_daily_quiz/constants.dart';
import 'package:your_daily_quiz/model/daily_log.dart';

@injectable
class DailyLogRepository {
  final BoxCollection _boxCollection;

  DailyLogRepository(this._boxCollection);

  Future<void> createDailyLog(final DailyLog dailyLog) async {
    final CollectionBox<Map> box = await _getBox();
    final String key = _getDailyLogKey();
    final Map<String, Object?> json = dailyLog.toJson();
    box.put(key, json);
  }

  Future<DailyLog?> getDailyLog() async {
    final CollectionBox<Map> box = await _getBox();
    final Map<dynamic, dynamic>? json = await box.get(_getDailyLogKey());

    if (json == null) {
      return null;
    }

    final Map<String, dynamic> resolvedJson = json as Map<String, dynamic>;
    return DailyLog.fromJson(resolvedJson);
  }

  String _getDailyLogKey() {
    final DateTime now = DateTime.now();
    return "${now.day}/${now.month}/${now.year}";
  }

  Future<CollectionBox<Map>> _getBox() async {
    return await _boxCollection.openBox<Map>(dailyLogBoxName);
  }
}
