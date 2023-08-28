// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currencies _$CurrenciesFromJson(Map<String, dynamic> json) {
  return _Currencies.fromJson(json);
}

/// @nodoc
mixin _$Currencies {
  List<Currency>? get data => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrenciesCopyWith<Currencies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesCopyWith<$Res> {
  factory $CurrenciesCopyWith(
          Currencies value, $Res Function(Currencies) then) =
      _$CurrenciesCopyWithImpl<$Res, Currencies>;
  @useResult
  $Res call({List<Currency>? data, int? timestamp});
}

/// @nodoc
class _$CurrenciesCopyWithImpl<$Res, $Val extends Currencies>
    implements $CurrenciesCopyWith<$Res> {
  _$CurrenciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrenciesCopyWith<$Res>
    implements $CurrenciesCopyWith<$Res> {
  factory _$$_CurrenciesCopyWith(
          _$_Currencies value, $Res Function(_$_Currencies) then) =
      __$$_CurrenciesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Currency>? data, int? timestamp});
}

/// @nodoc
class __$$_CurrenciesCopyWithImpl<$Res>
    extends _$CurrenciesCopyWithImpl<$Res, _$_Currencies>
    implements _$$_CurrenciesCopyWith<$Res> {
  __$$_CurrenciesCopyWithImpl(
      _$_Currencies _value, $Res Function(_$_Currencies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_Currencies(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currencies implements _Currencies {
  _$_Currencies({final List<Currency>? data, this.timestamp}) : _data = data;

  factory _$_Currencies.fromJson(Map<String, dynamic> json) =>
      _$$_CurrenciesFromJson(json);

  final List<Currency>? _data;
  @override
  List<Currency>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? timestamp;

  @override
  String toString() {
    return 'Currencies(data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currencies &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrenciesCopyWith<_$_Currencies> get copyWith =>
      __$$_CurrenciesCopyWithImpl<_$_Currencies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrenciesToJson(
      this,
    );
  }
}

abstract class _Currencies implements Currencies {
  factory _Currencies({final List<Currency>? data, final int? timestamp}) =
      _$_Currencies;

  factory _Currencies.fromJson(Map<String, dynamic> json) =
      _$_Currencies.fromJson;

  @override
  List<Currency>? get data;
  @override
  int? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_CurrenciesCopyWith<_$_Currencies> get copyWith =>
      throw _privateConstructorUsedError;
}
