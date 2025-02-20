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
