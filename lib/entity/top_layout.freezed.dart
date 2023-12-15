// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopLayout _$TopLayoutFromJson(Map<String, dynamic> json) {
  return _TopLayout.fromJson(json);
}

/// @nodoc
mixin _$TopLayout {
  TopLayoutType? get type => throw _privateConstructorUsedError;
  List<String> get productIDs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopLayoutCopyWith<TopLayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopLayoutCopyWith<$Res> {
  factory $TopLayoutCopyWith(TopLayout value, $Res Function(TopLayout) then) =
      _$TopLayoutCopyWithImpl<$Res, TopLayout>;
  @useResult
  $Res call({TopLayoutType? type, List<String> productIDs});
}

/// @nodoc
class _$TopLayoutCopyWithImpl<$Res, $Val extends TopLayout>
    implements $TopLayoutCopyWith<$Res> {
  _$TopLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? productIDs = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopLayoutType?,
      productIDs: null == productIDs
          ? _value.productIDs
          : productIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopLayoutImplCopyWith<$Res>
    implements $TopLayoutCopyWith<$Res> {
  factory _$$TopLayoutImplCopyWith(
          _$TopLayoutImpl value, $Res Function(_$TopLayoutImpl) then) =
      __$$TopLayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TopLayoutType? type, List<String> productIDs});
}

/// @nodoc
class __$$TopLayoutImplCopyWithImpl<$Res>
    extends _$TopLayoutCopyWithImpl<$Res, _$TopLayoutImpl>
    implements _$$TopLayoutImplCopyWith<$Res> {
  __$$TopLayoutImplCopyWithImpl(
      _$TopLayoutImpl _value, $Res Function(_$TopLayoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? productIDs = null,
  }) {
    return _then(_$TopLayoutImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopLayoutType?,
      productIDs: null == productIDs
          ? _value._productIDs
          : productIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopLayoutImpl implements _TopLayout {
  _$TopLayoutImpl({this.type, final List<String> productIDs = const []})
      : _productIDs = productIDs;

  factory _$TopLayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopLayoutImplFromJson(json);

  @override
  final TopLayoutType? type;
  final List<String> _productIDs;
  @override
  @JsonKey()
  List<String> get productIDs {
    if (_productIDs is EqualUnmodifiableListView) return _productIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIDs);
  }

  @override
  String toString() {
    return 'TopLayout(type: $type, productIDs: $productIDs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopLayoutImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._productIDs, _productIDs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_productIDs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopLayoutImplCopyWith<_$TopLayoutImpl> get copyWith =>
      __$$TopLayoutImplCopyWithImpl<_$TopLayoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopLayoutImplToJson(
      this,
    );
  }
}

abstract class _TopLayout implements TopLayout {
  factory _TopLayout(
      {final TopLayoutType? type,
      final List<String> productIDs}) = _$TopLayoutImpl;

  factory _TopLayout.fromJson(Map<String, dynamic> json) =
      _$TopLayoutImpl.fromJson;

  @override
  TopLayoutType? get type;
  @override
  List<String> get productIDs;
  @override
  @JsonKey(ignore: true)
  _$$TopLayoutImplCopyWith<_$TopLayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
