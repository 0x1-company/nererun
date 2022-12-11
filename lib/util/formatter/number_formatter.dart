import 'package:intl/intl.dart';

class NumberFormatter {
  static String hourAndMinute(DateTime? dateTime) {
    if (dateTime == null) return '';
    final format = NumberFormat('00');
    return format.format(dateTime.hour) + ':' + format.format(dateTime.minute);
  }

  static String comma(int value) {
    final formatter = NumberFormat('#,###');
    return formatter.format(value);
  }
}
