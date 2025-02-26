// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  num? get id => throw _privateConstructorUsedError;
  String get memberId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String get image => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {num? id,
      String memberId,
      String username,
      String? password,
      String name,
      @JsonKey(name: 'imageUrl') String image,
      int point,
      DateTime? createdAt,
      String? accessToken});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? memberId = null,
    Object? username = null,
    Object? password = freezed,
    Object? name = null,
    Object? image = null,
    Object? point = null,
    Object? createdAt = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String memberId,
      String username,
      String? password,
      String name,
      @JsonKey(name: 'imageUrl') String image,
      int point,
      DateTime? createdAt,
      String? accessToken});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? memberId = null,
    Object? username = null,
    Object? password = freezed,
    Object? name = null,
    Object? image = null,
    Object? point = null,
    Object? createdAt = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.id,
      required this.memberId,
      required this.username,
      this.password,
      required this.name,
      @JsonKey(name: 'imageUrl') required this.image,
      required this.point,
      this.createdAt,
      this.accessToken});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final num? id;
  @override
  final String memberId;
  @override
  final String username;
  @override
  final String? password;
  @override
  final String name;
  @override
  @JsonKey(name: 'imageUrl')
  final String image;
  @override
  final int point;
  @override
  final DateTime? createdAt;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'UserModel(id: $id, memberId: $memberId, username: $username, password: $password, name: $name, image: $image, point: $point, createdAt: $createdAt, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberId, username, password,
      name, image, point, createdAt, accessToken);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final num? id,
      required final String memberId,
      required final String username,
      final String? password,
      required final String name,
      @JsonKey(name: 'imageUrl') required final String image,
      required final int point,
      final DateTime? createdAt,
      final String? accessToken}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  num? get id;
  @override
  String get memberId;
  @override
  String get username;
  @override
  String? get password;
  @override
  String get name;
  @override
  @JsonKey(name: 'imageUrl')
  String get image;
  @override
  int get point;
  @override
  DateTime? get createdAt;
  @override
  String? get accessToken;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopMember _$TopMemberFromJson(Map<String, dynamic> json) {
  return _TopMember.fromJson(json);
}

/// @nodoc
mixin _$TopMember {
  Period get period => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<UserModel> get topMembers => throw _privateConstructorUsedError;

  /// Serializes this TopMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopMemberCopyWith<TopMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMemberCopyWith<$Res> {
  factory $TopMemberCopyWith(TopMember value, $Res Function(TopMember) then) =
      _$TopMemberCopyWithImpl<$Res, TopMember>;
  @useResult
  $Res call(
      {Period period,
      DateTime startDate,
      DateTime endDate,
      List<UserModel> topMembers});
}

/// @nodoc
class _$TopMemberCopyWithImpl<$Res, $Val extends TopMember>
    implements $TopMemberCopyWith<$Res> {
  _$TopMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? topMembers = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      topMembers: null == topMembers
          ? _value.topMembers
          : topMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopMemberImplCopyWith<$Res>
    implements $TopMemberCopyWith<$Res> {
  factory _$$TopMemberImplCopyWith(
          _$TopMemberImpl value, $Res Function(_$TopMemberImpl) then) =
      __$$TopMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Period period,
      DateTime startDate,
      DateTime endDate,
      List<UserModel> topMembers});
}

/// @nodoc
class __$$TopMemberImplCopyWithImpl<$Res>
    extends _$TopMemberCopyWithImpl<$Res, _$TopMemberImpl>
    implements _$$TopMemberImplCopyWith<$Res> {
  __$$TopMemberImplCopyWithImpl(
      _$TopMemberImpl _value, $Res Function(_$TopMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? topMembers = null,
  }) {
    return _then(_$TopMemberImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      topMembers: null == topMembers
          ? _value._topMembers
          : topMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopMemberImpl implements _TopMember {
  _$TopMemberImpl(
      {required this.period,
      required this.startDate,
      required this.endDate,
      final List<UserModel> topMembers = const []})
      : _topMembers = topMembers;

  factory _$TopMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopMemberImplFromJson(json);

  @override
  final Period period;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<UserModel> _topMembers;
  @override
  @JsonKey()
  List<UserModel> get topMembers {
    if (_topMembers is EqualUnmodifiableListView) return _topMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topMembers);
  }

  @override
  String toString() {
    return 'TopMember(period: $period, startDate: $startDate, endDate: $endDate, topMembers: $topMembers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopMemberImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._topMembers, _topMembers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, period, startDate, endDate,
      const DeepCollectionEquality().hash(_topMembers));

  /// Create a copy of TopMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopMemberImplCopyWith<_$TopMemberImpl> get copyWith =>
      __$$TopMemberImplCopyWithImpl<_$TopMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopMemberImplToJson(
      this,
    );
  }
}

abstract class _TopMember implements TopMember {
  factory _TopMember(
      {required final Period period,
      required final DateTime startDate,
      required final DateTime endDate,
      final List<UserModel> topMembers}) = _$TopMemberImpl;

  factory _TopMember.fromJson(Map<String, dynamic> json) =
      _$TopMemberImpl.fromJson;

  @override
  Period get period;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<UserModel> get topMembers;

  /// Create a copy of TopMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopMemberImplCopyWith<_$TopMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
