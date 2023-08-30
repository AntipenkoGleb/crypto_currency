// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrenciesResponseModel _$CurrenciesResponseModelFromJson(
    Map<String, dynamic> json) {
  return Model.fromJson(json);
}

/// @nodoc
mixin _$CurrenciesResponseModel {
  List<CurrencyModel> get data => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrenciesResponseModelCopyWith<CurrenciesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesResponseModelCopyWith<$Res> {
  factory $CurrenciesResponseModelCopyWith(CurrenciesResponseModel value,
          $Res Function(CurrenciesResponseModel) then) =
      _$CurrenciesResponseModelCopyWithImpl<$Res, CurrenciesResponseModel>;
  @useResult
  $Res call({List<CurrencyModel> data, int timestamp});
}

/// @nodoc
class _$CurrenciesResponseModelCopyWithImpl<$Res,
        $Val extends CurrenciesResponseModel>
    implements $CurrenciesResponseModelCopyWith<$Res> {
  _$CurrenciesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelCopyWith<$Res>
    implements $CurrenciesResponseModelCopyWith<$Res> {
  factory _$$ModelCopyWith(_$Model value, $Res Function(_$Model) then) =
      __$$ModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CurrencyModel> data, int timestamp});
}

/// @nodoc
class __$$ModelCopyWithImpl<$Res>
    extends _$CurrenciesResponseModelCopyWithImpl<$Res, _$Model>
    implements _$$ModelCopyWith<$Res> {
  __$$ModelCopyWithImpl(_$Model _value, $Res Function(_$Model) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(_$Model(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Model implements Model {
  const _$Model({final List<CurrencyModel> data = const [], this.timestamp = 0})
      : _data = data;

  factory _$Model.fromJson(Map<String, dynamic> json) => _$$ModelFromJson(json);

  final List<CurrencyModel> _data;
  @override
  @JsonKey()
  List<CurrencyModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int timestamp;

  @override
  String toString() {
    return 'CurrenciesResponseModel(data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Model &&
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
  _$$ModelCopyWith<_$Model> get copyWith =>
      __$$ModelCopyWithImpl<_$Model>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelToJson(
      this,
    );
  }
}

abstract class Model implements CurrenciesResponseModel {
  const factory Model({final List<CurrencyModel> data, final int timestamp}) =
      _$Model;

  factory Model.fromJson(Map<String, dynamic> json) = _$Model.fromJson;

  @override
  List<CurrencyModel> get data;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ModelCopyWith<_$Model> get copyWith => throw _privateConstructorUsedError;
}
