// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketProductCardModelImpl _$$MarketProductCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketProductCardModelImpl(
      productId: json['productId'] as String,
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      price: json['price'] as num,
      amount: json['amount'] as num,
    );

Map<String, dynamic> _$$MarketProductCardModelImplToJson(
        _$MarketProductCardModelImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'price': instance.price,
      'amount': instance.amount,
    };

_$IBasketPayloadImpl _$$IBasketPayloadImplFromJson(Map<String, dynamic> json) =>
    _$IBasketPayloadImpl(
      customerId: json['customer_id'] as String,
      memberId: json['member_id'] as String,
      productIds: (json['product_ids'] as List<dynamic>)
          .map((e) => IBasketProductPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num,
    );

Map<String, dynamic> _$$IBasketPayloadImplToJson(
        _$IBasketPayloadImpl instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'member_id': instance.memberId,
      'product_ids': instance.productIds,
      'total': instance.total,
    };

_$IBasketProductPayloadImpl _$$IBasketProductPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$IBasketProductPayloadImpl(
      productId: json['product_id'] as String,
      amount: json['amount'] as num,
    );

Map<String, dynamic> _$$IBasketProductPayloadImplToJson(
        _$IBasketProductPayloadImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'amount': instance.amount,
    };

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as num,
      orderId: json['orderId'] as String,
      orderCustomerId: json['orderCustomerId'] as String,
      orderMemberId: json['orderMemberId'] as String,
      total: (json['total'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      member: Member.fromJson(json['member'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'orderCustomerId': instance.orderCustomerId,
      'orderMemberId': instance.orderMemberId,
      'total': instance.total,
      'createdAt': instance.createdAt.toIso8601String(),
      'customer': instance.customer,
      'member': instance.member,
      'products': instance.products,
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      customerId: json['customerId'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      allMemberNumber: json['allMemberNumber'] as String,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'allMemberNumber': instance.allMemberNumber,
      'address': instance.address,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      memberId: json['memberId'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'name': instance.name,
      'username': instance.username,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      orderId: json['orderId'] as String,
      productId: json['productId'] as String,
      amount: json['amount'] as num,
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productId': instance.productId,
      'amount': instance.amount,
      'product': instance.product,
    };
