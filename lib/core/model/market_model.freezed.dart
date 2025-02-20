// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketProductCardModel _$MarketProductCardModelFromJson(
    Map<String, dynamic> json) {
  return _MarketProductCardModel.fromJson(json);
}

/// @nodoc
mixin _$MarketProductCardModel {
  String get productId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;

  /// Serializes this MarketProductCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketProductCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketProductCardModelCopyWith<MarketProductCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketProductCardModelCopyWith<$Res> {
  factory $MarketProductCardModelCopyWith(MarketProductCardModel value,
          $Res Function(MarketProductCardModel) then) =
      _$MarketProductCardModelCopyWithImpl<$Res, MarketProductCardModel>;
  @useResult
  $Res call(
      {String productId, String imageUrl, String name, num price, num amount});
}

/// @nodoc
class _$MarketProductCardModelCopyWithImpl<$Res,
        $Val extends MarketProductCardModel>
    implements $MarketProductCardModelCopyWith<$Res> {
  _$MarketProductCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketProductCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? price = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketProductCardModelImplCopyWith<$Res>
    implements $MarketProductCardModelCopyWith<$Res> {
  factory _$$MarketProductCardModelImplCopyWith(
          _$MarketProductCardModelImpl value,
          $Res Function(_$MarketProductCardModelImpl) then) =
      __$$MarketProductCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId, String imageUrl, String name, num price, num amount});
}

/// @nodoc
class __$$MarketProductCardModelImplCopyWithImpl<$Res>
    extends _$MarketProductCardModelCopyWithImpl<$Res,
        _$MarketProductCardModelImpl>
    implements _$$MarketProductCardModelImplCopyWith<$Res> {
  __$$MarketProductCardModelImplCopyWithImpl(
      _$MarketProductCardModelImpl _value,
      $Res Function(_$MarketProductCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketProductCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? price = null,
    Object? amount = null,
  }) {
    return _then(_$MarketProductCardModelImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketProductCardModelImpl implements _MarketProductCardModel {
  _$MarketProductCardModelImpl(
      {required this.productId,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.amount});

  factory _$MarketProductCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketProductCardModelImplFromJson(json);

  @override
  final String productId;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final num price;
  @override
  final num amount;

  @override
  String toString() {
    return 'MarketProductCardModel(productId: $productId, imageUrl: $imageUrl, name: $name, price: $price, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketProductCardModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, imageUrl, name, price, amount);

  /// Create a copy of MarketProductCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketProductCardModelImplCopyWith<_$MarketProductCardModelImpl>
      get copyWith => __$$MarketProductCardModelImplCopyWithImpl<
          _$MarketProductCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketProductCardModelImplToJson(
      this,
    );
  }
}

abstract class _MarketProductCardModel implements MarketProductCardModel {
  factory _MarketProductCardModel(
      {required final String productId,
      required final String imageUrl,
      required final String name,
      required final num price,
      required final num amount}) = _$MarketProductCardModelImpl;

  factory _MarketProductCardModel.fromJson(Map<String, dynamic> json) =
      _$MarketProductCardModelImpl.fromJson;

  @override
  String get productId;
  @override
  String get imageUrl;
  @override
  String get name;
  @override
  num get price;
  @override
  num get amount;

  /// Create a copy of MarketProductCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketProductCardModelImplCopyWith<_$MarketProductCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IBasketPayload _$IBasketPayloadFromJson(Map<String, dynamic> json) {
  return _IBasketPayload.fromJson(json);
}

/// @nodoc
mixin _$IBasketPayload {
  @JsonKey(name: 'customer_id')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_id')
  String get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<IBasketProductPayload> get productIds =>
      throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;

  /// Serializes this IBasketPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IBasketPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IBasketPayloadCopyWith<IBasketPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IBasketPayloadCopyWith<$Res> {
  factory $IBasketPayloadCopyWith(
          IBasketPayload value, $Res Function(IBasketPayload) then) =
      _$IBasketPayloadCopyWithImpl<$Res, IBasketPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String customerId,
      @JsonKey(name: 'member_id') String memberId,
      @JsonKey(name: 'product_ids') List<IBasketProductPayload> productIds,
      num total});
}

/// @nodoc
class _$IBasketPayloadCopyWithImpl<$Res, $Val extends IBasketPayload>
    implements $IBasketPayloadCopyWith<$Res> {
  _$IBasketPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IBasketPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? memberId = null,
    Object? productIds = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<IBasketProductPayload>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IBasketPayloadImplCopyWith<$Res>
    implements $IBasketPayloadCopyWith<$Res> {
  factory _$$IBasketPayloadImplCopyWith(_$IBasketPayloadImpl value,
          $Res Function(_$IBasketPayloadImpl) then) =
      __$$IBasketPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String customerId,
      @JsonKey(name: 'member_id') String memberId,
      @JsonKey(name: 'product_ids') List<IBasketProductPayload> productIds,
      num total});
}

/// @nodoc
class __$$IBasketPayloadImplCopyWithImpl<$Res>
    extends _$IBasketPayloadCopyWithImpl<$Res, _$IBasketPayloadImpl>
    implements _$$IBasketPayloadImplCopyWith<$Res> {
  __$$IBasketPayloadImplCopyWithImpl(
      _$IBasketPayloadImpl _value, $Res Function(_$IBasketPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of IBasketPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? memberId = null,
    Object? productIds = null,
    Object? total = null,
  }) {
    return _then(_$IBasketPayloadImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<IBasketProductPayload>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IBasketPayloadImpl implements _IBasketPayload {
  _$IBasketPayloadImpl(
      {@JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'product_ids')
      required final List<IBasketProductPayload> productIds,
      required this.total})
      : _productIds = productIds;

  factory _$IBasketPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$IBasketPayloadImplFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final String customerId;
  @override
  @JsonKey(name: 'member_id')
  final String memberId;
  final List<IBasketProductPayload> _productIds;
  @override
  @JsonKey(name: 'product_ids')
  List<IBasketProductPayload> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  final num total;

  @override
  String toString() {
    return 'IBasketPayload(customerId: $customerId, memberId: $memberId, productIds: $productIds, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IBasketPayloadImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, memberId,
      const DeepCollectionEquality().hash(_productIds), total);

  /// Create a copy of IBasketPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IBasketPayloadImplCopyWith<_$IBasketPayloadImpl> get copyWith =>
      __$$IBasketPayloadImplCopyWithImpl<_$IBasketPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IBasketPayloadImplToJson(
      this,
    );
  }
}

abstract class _IBasketPayload implements IBasketPayload {
  factory _IBasketPayload(
      {@JsonKey(name: 'customer_id') required final String customerId,
      @JsonKey(name: 'member_id') required final String memberId,
      @JsonKey(name: 'product_ids')
      required final List<IBasketProductPayload> productIds,
      required final num total}) = _$IBasketPayloadImpl;

  factory _IBasketPayload.fromJson(Map<String, dynamic> json) =
      _$IBasketPayloadImpl.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  String get customerId;
  @override
  @JsonKey(name: 'member_id')
  String get memberId;
  @override
  @JsonKey(name: 'product_ids')
  List<IBasketProductPayload> get productIds;
  @override
  num get total;

  /// Create a copy of IBasketPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IBasketPayloadImplCopyWith<_$IBasketPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IBasketProductPayload _$IBasketProductPayloadFromJson(
    Map<String, dynamic> json) {
  return _IBasketProductPayload.fromJson(json);
}

/// @nodoc
mixin _$IBasketProductPayload {
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;

  /// Serializes this IBasketProductPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IBasketProductPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IBasketProductPayloadCopyWith<IBasketProductPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IBasketProductPayloadCopyWith<$Res> {
  factory $IBasketProductPayloadCopyWith(IBasketProductPayload value,
          $Res Function(IBasketProductPayload) then) =
      _$IBasketProductPayloadCopyWithImpl<$Res, IBasketProductPayload>;
  @useResult
  $Res call({@JsonKey(name: 'product_id') String productId, num amount});
}

/// @nodoc
class _$IBasketProductPayloadCopyWithImpl<$Res,
        $Val extends IBasketProductPayload>
    implements $IBasketProductPayloadCopyWith<$Res> {
  _$IBasketProductPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IBasketProductPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IBasketProductPayloadImplCopyWith<$Res>
    implements $IBasketProductPayloadCopyWith<$Res> {
  factory _$$IBasketProductPayloadImplCopyWith(
          _$IBasketProductPayloadImpl value,
          $Res Function(_$IBasketProductPayloadImpl) then) =
      __$$IBasketProductPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_id') String productId, num amount});
}

/// @nodoc
class __$$IBasketProductPayloadImplCopyWithImpl<$Res>
    extends _$IBasketProductPayloadCopyWithImpl<$Res,
        _$IBasketProductPayloadImpl>
    implements _$$IBasketProductPayloadImplCopyWith<$Res> {
  __$$IBasketProductPayloadImplCopyWithImpl(_$IBasketProductPayloadImpl _value,
      $Res Function(_$IBasketProductPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of IBasketProductPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? amount = null,
  }) {
    return _then(_$IBasketProductPayloadImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IBasketProductPayloadImpl implements _IBasketProductPayload {
  _$IBasketProductPayloadImpl(
      {@JsonKey(name: 'product_id') required this.productId,
      required this.amount});

  factory _$IBasketProductPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$IBasketProductPayloadImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  final num amount;

  @override
  String toString() {
    return 'IBasketProductPayload(productId: $productId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IBasketProductPayloadImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, amount);

  /// Create a copy of IBasketProductPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IBasketProductPayloadImplCopyWith<_$IBasketProductPayloadImpl>
      get copyWith => __$$IBasketProductPayloadImplCopyWithImpl<
          _$IBasketProductPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IBasketProductPayloadImplToJson(
      this,
    );
  }
}

abstract class _IBasketProductPayload implements IBasketProductPayload {
  factory _IBasketProductPayload(
      {@JsonKey(name: 'product_id') required final String productId,
      required final num amount}) = _$IBasketProductPayloadImpl;

  factory _IBasketProductPayload.fromJson(Map<String, dynamic> json) =
      _$IBasketProductPayloadImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  num get amount;

  /// Create a copy of IBasketProductPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IBasketProductPayloadImplCopyWith<_$IBasketProductPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
