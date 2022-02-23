// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterEventTearOff {
  const _$CounterEventTearOff();

  CounterStartEvent start() {
    return const CounterStartEvent();
  }

  CounterIncrementEvent increment() {
    return const CounterIncrementEvent();
  }

  CounterDecrementEvent decrement() {
    return const CounterDecrementEvent();
  }
}

/// @nodoc
const $CounterEvent = _$CounterEventTearOff();

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterStartEvent value) start,
    required TResult Function(CounterIncrementEvent value) increment,
    required TResult Function(CounterDecrementEvent value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res> implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  final CounterEvent _value;
  // ignore: unused_field
  final $Res Function(CounterEvent) _then;
}

/// @nodoc
abstract class $CounterStartEventCopyWith<$Res> {
  factory $CounterStartEventCopyWith(
          CounterStartEvent value, $Res Function(CounterStartEvent) then) =
      _$CounterStartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterStartEventCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res>
    implements $CounterStartEventCopyWith<$Res> {
  _$CounterStartEventCopyWithImpl(
      CounterStartEvent _value, $Res Function(CounterStartEvent) _then)
      : super(_value, (v) => _then(v as CounterStartEvent));

  @override
  CounterStartEvent get _value => super._value as CounterStartEvent;
}

/// @nodoc

class _$CounterStartEvent implements CounterStartEvent {
  const _$CounterStartEvent();

  @override
  String toString() {
    return 'CounterEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CounterStartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterStartEvent value) start,
    required TResult Function(CounterIncrementEvent value) increment,
    required TResult Function(CounterDecrementEvent value) decrement,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class CounterStartEvent implements CounterEvent {
  const factory CounterStartEvent() = _$CounterStartEvent;
}

/// @nodoc
abstract class $CounterIncrementEventCopyWith<$Res> {
  factory $CounterIncrementEventCopyWith(CounterIncrementEvent value,
          $Res Function(CounterIncrementEvent) then) =
      _$CounterIncrementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterIncrementEventCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res>
    implements $CounterIncrementEventCopyWith<$Res> {
  _$CounterIncrementEventCopyWithImpl(
      CounterIncrementEvent _value, $Res Function(CounterIncrementEvent) _then)
      : super(_value, (v) => _then(v as CounterIncrementEvent));

  @override
  CounterIncrementEvent get _value => super._value as CounterIncrementEvent;
}

/// @nodoc

class _$CounterIncrementEvent implements CounterIncrementEvent {
  const _$CounterIncrementEvent();

  @override
  String toString() {
    return 'CounterEvent.increment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CounterIncrementEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return increment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
  }) {
    return increment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterStartEvent value) start,
    required TResult Function(CounterIncrementEvent value) increment,
    required TResult Function(CounterDecrementEvent value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class CounterIncrementEvent implements CounterEvent {
  const factory CounterIncrementEvent() = _$CounterIncrementEvent;
}

/// @nodoc
abstract class $CounterDecrementEventCopyWith<$Res> {
  factory $CounterDecrementEventCopyWith(CounterDecrementEvent value,
          $Res Function(CounterDecrementEvent) then) =
      _$CounterDecrementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterDecrementEventCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res>
    implements $CounterDecrementEventCopyWith<$Res> {
  _$CounterDecrementEventCopyWithImpl(
      CounterDecrementEvent _value, $Res Function(CounterDecrementEvent) _then)
      : super(_value, (v) => _then(v as CounterDecrementEvent));

  @override
  CounterDecrementEvent get _value => super._value as CounterDecrementEvent;
}

/// @nodoc

class _$CounterDecrementEvent implements CounterDecrementEvent {
  const _$CounterDecrementEvent();

  @override
  String toString() {
    return 'CounterEvent.decrement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CounterDecrementEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return decrement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
  }) {
    return decrement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterStartEvent value) start,
    required TResult Function(CounterIncrementEvent value) increment,
    required TResult Function(CounterDecrementEvent value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterStartEvent value)? start,
    TResult Function(CounterIncrementEvent value)? increment,
    TResult Function(CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class CounterDecrementEvent implements CounterEvent {
  const factory CounterDecrementEvent() = _$CounterDecrementEvent;
}

/// @nodoc
class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  CounterInitialState initial() {
    return const CounterInitialState();
  }

  CounterLoadingState loading() {
    return const CounterLoadingState();
  }

  CounterLoadedState loaded({required int counter}) {
    return CounterLoadedState(
      counter: counter,
    );
  }
}

/// @nodoc
const $CounterState = _$CounterStateTearOff();

/// @nodoc
mixin _$CounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int counter) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitialState value) initial,
    required TResult Function(CounterLoadingState value) loading,
    required TResult Function(CounterLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;
}

/// @nodoc
abstract class $CounterInitialStateCopyWith<$Res> {
  factory $CounterInitialStateCopyWith(
          CounterInitialState value, $Res Function(CounterInitialState) then) =
      _$CounterInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterInitialStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res>
    implements $CounterInitialStateCopyWith<$Res> {
  _$CounterInitialStateCopyWithImpl(
      CounterInitialState _value, $Res Function(CounterInitialState) _then)
      : super(_value, (v) => _then(v as CounterInitialState));

  @override
  CounterInitialState get _value => super._value as CounterInitialState;
}

/// @nodoc

class _$CounterInitialState implements CounterInitialState {
  const _$CounterInitialState();

  @override
  String toString() {
    return 'CounterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CounterInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int counter) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
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
    required TResult Function(CounterInitialState value) initial,
    required TResult Function(CounterLoadingState value) loading,
    required TResult Function(CounterLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CounterInitialState implements CounterState {
  const factory CounterInitialState() = _$CounterInitialState;
}

/// @nodoc
abstract class $CounterLoadingStateCopyWith<$Res> {
  factory $CounterLoadingStateCopyWith(
          CounterLoadingState value, $Res Function(CounterLoadingState) then) =
      _$CounterLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterLoadingStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res>
    implements $CounterLoadingStateCopyWith<$Res> {
  _$CounterLoadingStateCopyWithImpl(
      CounterLoadingState _value, $Res Function(CounterLoadingState) _then)
      : super(_value, (v) => _then(v as CounterLoadingState));

  @override
  CounterLoadingState get _value => super._value as CounterLoadingState;
}

/// @nodoc

class _$CounterLoadingState implements CounterLoadingState {
  const _$CounterLoadingState();

  @override
  String toString() {
    return 'CounterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CounterLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int counter) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
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
    required TResult Function(CounterInitialState value) initial,
    required TResult Function(CounterLoadingState value) loading,
    required TResult Function(CounterLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CounterLoadingState implements CounterState {
  const factory CounterLoadingState() = _$CounterLoadingState;
}

/// @nodoc
abstract class $CounterLoadedStateCopyWith<$Res> {
  factory $CounterLoadedStateCopyWith(
          CounterLoadedState value, $Res Function(CounterLoadedState) then) =
      _$CounterLoadedStateCopyWithImpl<$Res>;
  $Res call({int counter});
}

/// @nodoc
class _$CounterLoadedStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res>
    implements $CounterLoadedStateCopyWith<$Res> {
  _$CounterLoadedStateCopyWithImpl(
      CounterLoadedState _value, $Res Function(CounterLoadedState) _then)
      : super(_value, (v) => _then(v as CounterLoadedState));

  @override
  CounterLoadedState get _value => super._value as CounterLoadedState;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(CounterLoadedState(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterLoadedState implements CounterLoadedState {
  const _$CounterLoadedState({required this.counter});

  @override
  final int counter;

  @override
  String toString() {
    return 'CounterState.loaded(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CounterLoadedState &&
            const DeepCollectionEquality().equals(other.counter, counter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(counter));

  @JsonKey(ignore: true)
  @override
  $CounterLoadedStateCopyWith<CounterLoadedState> get copyWith =>
      _$CounterLoadedStateCopyWithImpl<CounterLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int counter) loaded,
  }) {
    return loaded(counter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
  }) {
    return loaded?.call(counter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int counter)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitialState value) initial,
    required TResult Function(CounterLoadingState value) loading,
    required TResult Function(CounterLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitialState value)? initial,
    TResult Function(CounterLoadingState value)? loading,
    TResult Function(CounterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CounterLoadedState implements CounterState {
  const factory CounterLoadedState({required int counter}) =
      _$CounterLoadedState;

  int get counter;
  @JsonKey(ignore: true)
  $CounterLoadedStateCopyWith<CounterLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
