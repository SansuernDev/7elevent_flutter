// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseProductModelImpl _$$ResponseProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseProductModelImpl(
      page: json['page'] as num,
      limit: json['limit'] as num,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseProductModelImplToJson(
        _$ResponseProductModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      productId: json['productId'] as String,
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      price: stringToDouble(json['price'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'price': instance.price,
      'createdAt': instance.createdAt.toIso8601String(),
    };
