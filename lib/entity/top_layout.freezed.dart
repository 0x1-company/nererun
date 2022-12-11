// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TopLayoutCopyWithImpl<$Res>;
  $Res call({TopLayoutType? type, List<String> productIDs});
}

/// @nodoc
class _$TopLayoutCopyWithImpl<$Res> implements $TopLayoutCopyWith<$Res> {
  _$TopLayoutCopyWithImpl(this._value, this._then);

  final TopLayout _value;
  // ignore: unused_field
  final $Res Function(TopLayout) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? productIDs = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopLayoutType?,
      productIDs: productIDs == freezed
          ? _value.productIDs
          : productIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_TopLayoutCopyWith<$Res> implements $TopLayoutCopyWith<$Res> {
  factory _$$_TopLayoutCopyWith(
          _$_TopLayout value, $Res Function(_$_TopLayout) then) =
      __$$_TopLayoutCopyWithImpl<$Res>;
  @override
  $Res call({TopLayoutType? type, List<String> productIDs});
}

/// @nodoc
class __$$_TopLayoutCopyWithImpl<$Res> extends _$TopLayoutCopyWithImpl<$Res>
    implements _$$_TopLayoutCopyWith<$Res> {
  __$$_TopLayoutCopyWithImpl(
      _$_TopLayout _value, $Res Function(_$_TopLayout) _then)
      : super(_value, (v) => _then(v as _$_TopLayout));

  @override
  _$_TopLayout get _value => super._value as _$_TopLayout;

  @override
  $Res call({
    Object? type = freezed,
    Object? productIDs = freezed,
  }) {
    return _then(_$_TopLayout(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopLayoutType?,
      productIDs: productIDs == freezed
          ? _value._productIDs
          : productIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopLayout implements _TopLayout {
  _$_TopLayout({this.type, final List<String> productIDs = const []})
      : _productIDs = productIDs;

  factory _$_TopLayout.fromJson(Map<String, dynamic> json) =>
      _$$_TopLayoutFromJson(json);

  @override
  final TopLayoutType? type;
  final List<String> _productIDs;
  @override
  @JsonKey()
  List<String> get productIDs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIDs);
  }

  @override
  String toString() {
    return 'TopLayout(type: $type, productIDs: $productIDs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopLayout &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._productIDs, _productIDs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_productIDs));

  @JsonKey(ignore: true)
  @override
  _$$_TopLayoutCopyWith<_$_TopLayout> get copyWith =>
      __$$_TopLayoutCopyWithImpl<_$_TopLayout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopLayoutToJson(
      this,
    );
  }
}

abstract class _TopLayout implements TopLayout {
  factory _TopLayout(
      {final TopLayoutType? type,
      final List<String> productIDs}) = _$_TopLayout;

  factory _TopLayout.fromJson(Map<String, dynamic> json) =
      _$_TopLayout.fromJson;

  @override
  TopLayoutType? get type;
  @override
  List<String> get productIDs;
  @override
  @JsonKey(ignore: true)
  _$$_TopLayoutCopyWith<_$_TopLayout> get copyWith =>
      throw _privateConstructorUsedError;
}
