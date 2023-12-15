import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_time.g.dart';
part 'reminder_time.freezed.dart';

@freezed
abstract class ReminderTime implements _$ReminderTime {
  ReminderTime._();
  factory ReminderTime({
    required int hour,
    required int minute,
  }) = _ReminderTime;

  factory ReminderTime.fromJson(Map<String, dynamic> json) =>
      _$ReminderTimeFromJson(json);

  DateTime dateTime() {
    var t = DateTime.now().toLocal();
    return DateTime(t.year, t.month, t.day, hour, minute);
  }
}
