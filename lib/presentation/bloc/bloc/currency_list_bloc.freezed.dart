// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListStartedEvent value) started,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListStartedEvent value)? started,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListStartedEvent value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyListEventCopyWith<$Res> {
  factory $CurrencyListEventCopyWith(
          CurrencyListEvent value, $Res Function(CurrencyListEvent) then) =
      _$CurrencyListEventCopyWithImpl<$Res, CurrencyListEvent>;
}

/// @nodoc
class _$CurrencyListEventCopyWithImpl<$Res, $Val extends CurrencyListEvent>
    implements $CurrencyListEventCopyWith<$Res> {
  _$CurrencyListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Res Function($Val) _then;

  // ignore: unused_field
  final $Val _value;
}

/// @nodoc
abstract class _$$CurrencyListStartedEventCopyWith<$Res> {
  factory _$$CurrencyListStartedEventCopyWith(_$CurrencyListStartedEvent value,
          $Res Function(_$CurrencyListStartedEvent) then) =
      __$$CurrencyListStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyListStartedEventCopyWithImpl<$Res>
    extends _$CurrencyListEventCopyWithImpl<$Res, _$CurrencyListStartedEvent>
    implements _$$CurrencyListStartedEventCopyWith<$Res> {
  __$$CurrencyListStartedEventCopyWithImpl(_$CurrencyListStartedEvent _value,
      $Res Function(_$CurrencyListStartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyListStartedEvent
    with DiagnosticableTreeMixin
    implements CurrencyListStartedEvent {
  const _$CurrencyListStartedEvent();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyListStartedEvent);
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListStartedEvent value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListStartedEvent value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListStartedEvent value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrencyListEvent.started'));
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyListEvent.started()';
  }
}

abstract class CurrencyListStartedEvent implements CurrencyListEvent {
  const factory CurrencyListStartedEvent() = _$CurrencyListStartedEvent;
}

/// @nodoc
mixin _$CurrencyListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Currency> currencies)? loaded,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListError value) error,
    required TResult Function(CurrencyListInitial value) initial,
    required TResult Function(CurrencyListLoaded value) loaded,
    required TResult Function(CurrencyListLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListError value)? error,
    TResult? Function(CurrencyListInitial value)? initial,
    TResult? Function(CurrencyListLoaded value)? loaded,
    TResult? Function(CurrencyListLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListError value)? error,
    TResult Function(CurrencyListInitial value)? initial,
    TResult Function(CurrencyListLoaded value)? loaded,
    TResult Function(CurrencyListLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyListStateCopyWith<$Res> {
  factory $CurrencyListStateCopyWith(
          CurrencyListState value, $Res Function(CurrencyListState) then) =
      _$CurrencyListStateCopyWithImpl<$Res, CurrencyListState>;
}

/// @nodoc
class _$CurrencyListStateCopyWithImpl<$Res, $Val extends CurrencyListState>
    implements $CurrencyListStateCopyWith<$Res> {
  _$CurrencyListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Res Function($Val) _then;

  // ignore: unused_field
  final $Val _value;
}

/// @nodoc
abstract class _$$CurrencyListErrorCopyWith<$Res> {
  factory _$$CurrencyListErrorCopyWith(
          _$CurrencyListError value, $Res Function(_$CurrencyListError) then) =
      __$$CurrencyListErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyListErrorCopyWithImpl<$Res>
    extends _$CurrencyListStateCopyWithImpl<$Res, _$CurrencyListError>
    implements _$$CurrencyListErrorCopyWith<$Res> {
  __$$CurrencyListErrorCopyWithImpl(
      _$CurrencyListError _value, $Res Function(_$CurrencyListError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyListError
    with DiagnosticableTreeMixin
    implements CurrencyListError {
  const _$CurrencyListError();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyListError);
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function() loading,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Currency> currencies)? loaded,
    TResult? Function()? loading,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListError value) error,
    required TResult Function(CurrencyListInitial value) initial,
    required TResult Function(CurrencyListLoaded value) loaded,
    required TResult Function(CurrencyListLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListError value)? error,
    TResult? Function(CurrencyListInitial value)? initial,
    TResult? Function(CurrencyListLoaded value)? loaded,
    TResult? Function(CurrencyListLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListError value)? error,
    TResult Function(CurrencyListInitial value)? initial,
    TResult Function(CurrencyListLoaded value)? loaded,
    TResult Function(CurrencyListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrencyListState.error'));
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyListState.error()';
  }
}

abstract class CurrencyListError implements CurrencyListState {
  const factory CurrencyListError() = _$CurrencyListError;
}

/// @nodoc
abstract class _$$CurrencyListInitialCopyWith<$Res> {
  factory _$$CurrencyListInitialCopyWith(_$CurrencyListInitial value,
          $Res Function(_$CurrencyListInitial) then) =
      __$$CurrencyListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyListInitialCopyWithImpl<$Res>
    extends _$CurrencyListStateCopyWithImpl<$Res, _$CurrencyListInitial>
    implements _$$CurrencyListInitialCopyWith<$Res> {
  __$$CurrencyListInitialCopyWithImpl(
      _$CurrencyListInitial _value, $Res Function(_$CurrencyListInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyListInitial
    with DiagnosticableTreeMixin
    implements CurrencyListInitial {
  const _$CurrencyListInitial();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyListInitial);
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Currency> currencies)? loaded,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListError value) error,
    required TResult Function(CurrencyListInitial value) initial,
    required TResult Function(CurrencyListLoaded value) loaded,
    required TResult Function(CurrencyListLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListError value)? error,
    TResult? Function(CurrencyListInitial value)? initial,
    TResult? Function(CurrencyListLoaded value)? loaded,
    TResult? Function(CurrencyListLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListError value)? error,
    TResult Function(CurrencyListInitial value)? initial,
    TResult Function(CurrencyListLoaded value)? loaded,
    TResult Function(CurrencyListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrencyListState.initial'));
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyListState.initial()';
  }
}

abstract class CurrencyListInitial implements CurrencyListState {
  const factory CurrencyListInitial() = _$CurrencyListInitial;
}

/// @nodoc
abstract class _$$CurrencyListLoadedCopyWith<$Res> {
  factory _$$CurrencyListLoadedCopyWith(_$CurrencyListLoaded value,
          $Res Function(_$CurrencyListLoaded) then) =
      __$$CurrencyListLoadedCopyWithImpl<$Res>;

  @useResult
  $Res call({List<Currency> currencies});
}

/// @nodoc
class __$$CurrencyListLoadedCopyWithImpl<$Res>
    extends _$CurrencyListStateCopyWithImpl<$Res, _$CurrencyListLoaded>
    implements _$$CurrencyListLoadedCopyWith<$Res> {
  __$$CurrencyListLoadedCopyWithImpl(
      _$CurrencyListLoaded _value, $Res Function(_$CurrencyListLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$CurrencyListLoaded(
      null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$CurrencyListLoaded
    with DiagnosticableTreeMixin
    implements CurrencyListLoaded {
  const _$CurrencyListLoaded(final List<Currency> currencies)
      : _currencies = currencies;

  final List<Currency> _currencies;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyListLoaded &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyListLoadedCopyWith<_$CurrencyListLoaded> get copyWith =>
      __$$CurrencyListLoadedCopyWithImpl<_$CurrencyListLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function() loading,
  }) {
    return loaded(currencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Currency> currencies)? loaded,
    TResult? Function()? loading,
  }) {
    return loaded?.call(currencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListError value) error,
    required TResult Function(CurrencyListInitial value) initial,
    required TResult Function(CurrencyListLoaded value) loaded,
    required TResult Function(CurrencyListLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListError value)? error,
    TResult? Function(CurrencyListInitial value)? initial,
    TResult? Function(CurrencyListLoaded value)? loaded,
    TResult? Function(CurrencyListLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListError value)? error,
    TResult Function(CurrencyListInitial value)? initial,
    TResult Function(CurrencyListLoaded value)? loaded,
    TResult Function(CurrencyListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  List<Currency> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyListState.loaded'))
      ..add(DiagnosticsProperty('currencies', currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyListState.loaded(currencies: $currencies)';
  }
}

abstract class CurrencyListLoaded implements CurrencyListState {
  const factory CurrencyListLoaded(final List<Currency> currencies) =
      _$CurrencyListLoaded;

  List<Currency> get currencies;

  @JsonKey(ignore: true)
  _$$CurrencyListLoadedCopyWith<_$CurrencyListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyListLoadingCopyWith<$Res> {
  factory _$$CurrencyListLoadingCopyWith(_$CurrencyListLoading value,
          $Res Function(_$CurrencyListLoading) then) =
      __$$CurrencyListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyListLoadingCopyWithImpl<$Res>
    extends _$CurrencyListStateCopyWithImpl<$Res, _$CurrencyListLoading>
    implements _$$CurrencyListLoadingCopyWith<$Res> {
  __$$CurrencyListLoadingCopyWithImpl(
      _$CurrencyListLoading _value, $Res Function(_$CurrencyListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyListLoading
    with DiagnosticableTreeMixin
    implements CurrencyListLoading {
  const _$CurrencyListLoading();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyListLoading);
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(List<Currency> currencies)? loaded,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyListError value) error,
    required TResult Function(CurrencyListInitial value) initial,
    required TResult Function(CurrencyListLoaded value) loaded,
    required TResult Function(CurrencyListLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyListError value)? error,
    TResult? Function(CurrencyListInitial value)? initial,
    TResult? Function(CurrencyListLoaded value)? loaded,
    TResult? Function(CurrencyListLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyListError value)? error,
    TResult Function(CurrencyListInitial value)? initial,
    TResult Function(CurrencyListLoaded value)? loaded,
    TResult Function(CurrencyListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrencyListState.loading'));
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyListState.loading()';
  }
}

abstract class CurrencyListLoading implements CurrencyListState {
  const factory CurrencyListLoading() = _$CurrencyListLoading;
}
