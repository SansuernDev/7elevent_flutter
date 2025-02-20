// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() done,
    required TResult Function() fetchingMore,
    required TResult Function(Object? e, StackTrace? stack) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? done,
    TResult? Function()? fetchingMore,
    TResult? Function(Object? e, StackTrace? stack)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? done,
    TResult Function()? fetchingMore,
    TResult Function(Object? e, StackTrace? stack)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Done value) done,
    required TResult Function(_FetchingMore value) fetchingMore,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Done value)? done,
    TResult? Function(_FetchingMore value)? fetchingMore,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Done value)? done,
    TResult Function(_FetchingMore value)? fetchingMore,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedStatusCopyWith<$Res> {
  factory $PaginatedStatusCopyWith(
          PaginatedStatus value, $Res Function(PaginatedStatus) then) =
      _$PaginatedStatusCopyWithImpl<$Res, PaginatedStatus>;
}

/// @nodoc
class _$PaginatedStatusCopyWithImpl<$Res, $Val extends PaginatedStatus>
    implements $PaginatedStatusCopyWith<$Res> {
  _$PaginatedStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$PaginatedStatusCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DoneImpl implements _Done {
  const _$DoneImpl();

  @override
  String toString() {
    return 'PaginatedStatus.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() done,
    required TResult Function() fetchingMore,
    required TResult Function(Object? e, StackTrace? stack) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? done,
    TResult? Function()? fetchingMore,
    TResult? Function(Object? e, StackTrace? stack)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? done,
    TResult Function()? fetchingMore,
    TResult Function(Object? e, StackTrace? stack)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Done value) done,
    required TResult Function(_FetchingMore value) fetchingMore,
    required TResult Function(_Error value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Done value)? done,
    TResult? Function(_FetchingMore value)? fetchingMore,
    TResult? Function(_Error value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Done value)? done,
    TResult Function(_FetchingMore value)? fetchingMore,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements PaginatedStatus {
  const factory _Done() = _$DoneImpl;
}

/// @nodoc
abstract class _$$FetchingMoreImplCopyWith<$Res> {
  factory _$$FetchingMoreImplCopyWith(
          _$FetchingMoreImpl value, $Res Function(_$FetchingMoreImpl) then) =
      __$$FetchingMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingMoreImplCopyWithImpl<$Res>
    extends _$PaginatedStatusCopyWithImpl<$Res, _$FetchingMoreImpl>
    implements _$$FetchingMoreImplCopyWith<$Res> {
  __$$FetchingMoreImplCopyWithImpl(
      _$FetchingMoreImpl _value, $Res Function(_$FetchingMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchingMoreImpl implements _FetchingMore {
  const _$FetchingMoreImpl();

  @override
  String toString() {
    return 'PaginatedStatus.fetchingMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() done,
    required TResult Function() fetchingMore,
    required TResult Function(Object? e, StackTrace? stack) error,
  }) {
    return fetchingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? done,
    TResult? Function()? fetchingMore,
    TResult? Function(Object? e, StackTrace? stack)? error,
  }) {
    return fetchingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? done,
    TResult Function()? fetchingMore,
    TResult Function(Object? e, StackTrace? stack)? error,
    required TResult orElse(),
  }) {
    if (fetchingMore != null) {
      return fetchingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Done value) done,
    required TResult Function(_FetchingMore value) fetchingMore,
    required TResult Function(_Error value) error,
  }) {
    return fetchingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Done value)? done,
    TResult? Function(_FetchingMore value)? fetchingMore,
    TResult? Function(_Error value)? error,
  }) {
    return fetchingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Done value)? done,
    TResult Function(_FetchingMore value)? fetchingMore,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (fetchingMore != null) {
      return fetchingMore(this);
    }
    return orElse();
  }
}

abstract class _FetchingMore implements PaginatedStatus {
  const factory _FetchingMore() = _$FetchingMoreImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e, StackTrace? stack});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PaginatedStatusCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
    Object? stack = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == e ? _value.e : e,
      freezed == stack
          ? _value.stack
          : stack // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.e, [this.stack]);

  @override
  final Object? e;
  @override
  final StackTrace? stack;

  @override
  String toString() {
    return 'PaginatedStatus.error(e: $e, stack: $stack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.stack, stack) || other.stack == stack));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e), stack);

  /// Create a copy of PaginatedStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() done,
    required TResult Function() fetchingMore,
    required TResult Function(Object? e, StackTrace? stack) error,
  }) {
    return error(e, stack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? done,
    TResult? Function()? fetchingMore,
    TResult? Function(Object? e, StackTrace? stack)? error,
  }) {
    return error?.call(e, stack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? done,
    TResult Function()? fetchingMore,
    TResult Function(Object? e, StackTrace? stack)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e, stack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Done value) done,
    required TResult Function(_FetchingMore value) fetchingMore,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Done value)? done,
    TResult? Function(_FetchingMore value)? fetchingMore,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Done value)? done,
    TResult Function(_FetchingMore value)? fetchingMore,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PaginatedStatus {
  const factory _Error(final Object? e, [final StackTrace? stack]) =
      _$ErrorImpl;

  Object? get e;
  StackTrace? get stack;

  /// Create a copy of PaginatedStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
