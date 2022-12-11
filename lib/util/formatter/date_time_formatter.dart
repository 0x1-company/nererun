import 'package:intl/intl.dart';

class DateTimeFormatter {
  static String hourAndMinute(DateTime? dateTime) {
    if (dateTime == null) return '';
    final format = NumberFormat('00');
    return format.format(dateTime.hour) + ':' + format.format(dateTime.minute);
  }

  static String monthMinute(DateTime? dateTime) {
    if (dateTime == null) return '';
    final format = NumberFormat('00');
    return format.format(dateTime.month) +
        '/' +
        format.format(dateTime.day) +
        ' ' +
        hourAndMinute(dateTime);
  }

  static String monthAndDay(DateTime? dateTime) {
    if (dateTime == null) return '';
    return '${dateTime.month}/${dateTime.day}';
  }
}
