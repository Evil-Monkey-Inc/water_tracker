import 'dart:ui';
import 'package:cron/cron.dart';

class CronUtil {
  final _cron = Cron();

  void schedule(Schedule schedule, VoidCallback callback) => _cron.schedule(schedule, callback);
}
