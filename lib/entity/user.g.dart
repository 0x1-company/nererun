// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String? ?? '',
      isAnonymous: json['isAnonymous'] as bool? ?? true,
      offTimerType:
          $enumDecodeNullable(_$OffTimerTypeEnumMap, json['offTimerType']) ??
              OffTimerType.off,
      packageInfo: json['packageInfo'] == null
          ? null
          : Package.fromJson(json['packageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'isAnonymous': instance.isAnonymous,
      'offTimerType': _$OffTimerTypeEnumMap[instance.offTimerType]!,
      'packageInfo': instance.packageInfo,
    };

const _$OffTimerTypeEnumMap = {
  OffTimerType.off: 'off',
  OffTimerType.minute30: 'minute30',
  OffTimerType.minute60: 'minute60',
  OffTimerType.minute90: 'minute90',
  OffTimerType.minute120: 'minute120',
  OffTimerType.minute180: 'minute180',
  OffTimerType.minute300: 'minute300',
};
