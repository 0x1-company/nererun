// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reminder_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReminderTime _$ReminderTimeFromJson(Map<String, dynamic> json) {
  return _ReminderTime.fromJson(json);
}

/// @nodoc
mixin _$ReminderTime {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReminderTimeCopyWith<ReminderTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderTimeCopyWith<$Res> {
  factory $ReminderTimeCopyWith(
          ReminderTime value, $Res Function(ReminderTime) then) =
      _$ReminderTimeCopyWithImpl<$Res>;
  $Res call({int hour, int minute});
}

/// @nodoc
class _$ReminderTimeCopyWithImpl<$Res> implements $ReminderTimeCopyWith<$Res> {
  _$ReminderTimeCopyWithImpl(this._value, this._then);

  final ReminderTime _value;
  // ignore: unused_field
  final $Res Function(ReminderTime) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ReminderTimeCopyWith<$Res>
    implements $ReminderTimeCopyWith<$Res> {
  factory _$$_ReminderTimeCopyWith(
          _$_ReminderTime value, $Res Function(_$_ReminderTime) then) =
      __$$_ReminderTimeCopyWithImpl<$Res>;
  @override
  $Res call({int hour, int minute});
}

/// @nodoc
class __$$_ReminderTimeCopyWithImpl<$Res>
    extends _$ReminderTimeCopyWithImpl<$Res>
    implements _$$_ReminderTimeCopyWith<$Res> {
  __$$_ReminderTimeCopyWithImpl(
      _$_ReminderTime _value, $Res Function(_$_ReminderTime) _then)
      : super(_value, (v) => _then(v as _$_ReminderTime));

  @override
  _$_ReminderTime get _value => super._value as _$_ReminderTime;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
  }) {
    return _then(_$_ReminderTime(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReminderTime extends _ReminderTime {
  _$_ReminderTime({required this.hour, required this.minute}) : super._();

  factory _$_ReminderTime.fromJson(Map<String, dynamic> json) =>
      _$$_ReminderTimeFromJson(json);

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'ReminderTime(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReminderTime &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.minute, minute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(minute));

  @JsonKey(ignore: true)
  @override
  _$$_ReminderTimeCopyWith<_$_ReminderTime> get copyWith =>
      __$$_ReminderTimeCopyWithImpl<_$_ReminderTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReminderTimeToJson(
      this,
    );
  }
}

abstract class _ReminderTime extends ReminderTime {
  factory _ReminderTime({required final int hour, required final int minute}) =
      _$_ReminderTime;
  _ReminderTime._() : super._();

  factory _ReminderTime.fromJson(Map<String, dynamic> json) =
      _$_ReminderTime.fromJson;

  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$$_ReminderTimeCopyWith<_$_ReminderTime> get copyWith =>
      throw _privateConstructorUsedError;
}
