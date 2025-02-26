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

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  num get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get orderCustomerId => throw _privateConstructorUsedError;
  String get orderMemberId => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  Member get member => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {num id,
      String orderId,
      String orderCustomerId,
      String orderMemberId,
      double total,
      DateTime createdAt,
      Customer customer,
      Member member,
      List<Product> products});

  $CustomerCopyWith<$Res> get customer;
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? orderCustomerId = null,
    Object? orderMemberId = null,
    Object? total = null,
    Object? createdAt = null,
    Object? customer = null,
    Object? member = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCustomerId: null == orderCustomerId
          ? _value.orderCustomerId
          : orderCustomerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderMemberId: null == orderMemberId
          ? _value.orderMemberId
          : orderMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res> get member {
    return $MemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      String orderId,
      String orderCustomerId,
      String orderMemberId,
      double total,
      DateTime createdAt,
      Customer customer,
      Member member,
      List<Product> products});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? orderCustomerId = null,
    Object? orderMemberId = null,
    Object? total = null,
    Object? createdAt = null,
    Object? customer = null,
    Object? member = null,
    Object? products = null,
  }) {
    return _then(_$OrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCustomerId: null == orderCustomerId
          ? _value.orderCustomerId
          : orderCustomerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderMemberId: null == orderMemberId
          ? _value.orderMemberId
          : orderMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.id,
      required this.orderId,
      required this.orderCustomerId,
      required this.orderMemberId,
      required this.total,
      required this.createdAt,
      required this.customer,
      required this.member,
      required final List<Product> products})
      : _products = products;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final num id;
  @override
  final String orderId;
  @override
  final String orderCustomerId;
  @override
  final String orderMemberId;
  @override
  final double total;
  @override
  final DateTime createdAt;
  @override
  final Customer customer;
  @override
  final Member member;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, orderId: $orderId, orderCustomerId: $orderCustomerId, orderMemberId: $orderMemberId, total: $total, createdAt: $createdAt, customer: $customer, member: $member, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderCustomerId, orderCustomerId) ||
                other.orderCustomerId == orderCustomerId) &&
            (identical(other.orderMemberId, orderMemberId) ||
                other.orderMemberId == orderMemberId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.member, member) || other.member == member) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      orderCustomerId,
      orderMemberId,
      total,
      createdAt,
      customer,
      member,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final num id,
      required final String orderId,
      required final String orderCustomerId,
      required final String orderMemberId,
      required final double total,
      required final DateTime createdAt,
      required final Customer customer,
      required final Member member,
      required final List<Product> products}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  num get id;
  @override
  String get orderId;
  @override
  String get orderCustomerId;
  @override
  String get orderMemberId;
  @override
  double get total;
  @override
  DateTime get createdAt;
  @override
  Customer get customer;
  @override
  Member get member;
  @override
  List<Product> get products;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String get customerId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get allMemberNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Customer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String customerId,
      String name,
      String phoneNumber,
      String allMemberNumber,
      String address,
      DateTime createdAt});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? allMemberNumber = null,
    Object? address = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      allMemberNumber: null == allMemberNumber
          ? _value.allMemberNumber
          : allMemberNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerId,
      String name,
      String phoneNumber,
      String allMemberNumber,
      String address,
      DateTime createdAt});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? allMemberNumber = null,
    Object? address = null,
    Object? createdAt = null,
  }) {
    return _then(_$CustomerImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      allMemberNumber: null == allMemberNumber
          ? _value.allMemberNumber
          : allMemberNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {required this.customerId,
      required this.name,
      required this.phoneNumber,
      required this.allMemberNumber,
      required this.address,
      required this.createdAt});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  final String customerId;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String allMemberNumber;
  @override
  final String address;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Customer(customerId: $customerId, name: $name, phoneNumber: $phoneNumber, allMemberNumber: $allMemberNumber, address: $address, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.allMemberNumber, allMemberNumber) ||
                other.allMemberNumber == allMemberNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, name, phoneNumber,
      allMemberNumber, address, createdAt);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required final String customerId,
      required final String name,
      required final String phoneNumber,
      required final String allMemberNumber,
      required final String address,
      required final DateTime createdAt}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  String get customerId;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get allMemberNumber;
  @override
  String get address;
  @override
  DateTime get createdAt;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  String get memberId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call({String memberId, String name, String username});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? name = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberImplCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$MemberImplCopyWith(
          _$MemberImpl value, $Res Function(_$MemberImpl) then) =
      __$$MemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String memberId, String name, String username});
}

/// @nodoc
class __$$MemberImplCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$MemberImpl>
    implements _$$MemberImplCopyWith<$Res> {
  __$$MemberImplCopyWithImpl(
      _$MemberImpl _value, $Res Function(_$MemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? name = null,
    Object? username = null,
  }) {
    return _then(_$MemberImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberImpl implements _Member {
  const _$MemberImpl(
      {required this.memberId, required this.name, required this.username});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  final String memberId;
  @override
  final String name;
  @override
  final String username;

  @override
  String toString() {
    return 'Member(memberId: $memberId, name: $name, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, name, username);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      __$$MemberImplCopyWithImpl<_$MemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberImplToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  const factory _Member(
      {required final String memberId,
      required final String name,
      required final String username}) = _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  String get memberId;
  @override
  String get name;
  @override
  String get username;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get orderId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String orderId, String productId, num amount, ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? amount = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId, String productId, num amount, ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? amount = null,
    Object? product = null,
  }) {
    return _then(_$ProductImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.orderId,
      required this.productId,
      required this.amount,
      required this.product});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String orderId;
  @override
  final String productId;
  @override
  final num amount;
  @override
  final ProductModel product;

  @override
  String toString() {
    return 'Product(orderId: $orderId, productId: $productId, amount: $amount, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, productId, amount, product);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String orderId,
      required final String productId,
      required final num amount,
      required final ProductModel product}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get orderId;
  @override
  String get productId;
  @override
  num get amount;
  @override
  ProductModel get product;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
