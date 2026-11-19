import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

class WorldTime {
  final String location;
  final String url;
  final String flag;
  String time = '';
  bool isDayTime = true;

  WorldTime({required this.location, required this.url, required this.flag});

  Future<void> getData() async {
    final now = tz.TZDateTime.now(tz.getLocation(url));
    isDayTime = now.hour > 6 && now.hour < 20;
    time = DateFormat.jm().format(now);
  }
}
