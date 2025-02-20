// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      customerId: json['customerId'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      allMemberNumber: json['allMemberNumber'] as String,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'allMemberNumber': instance.allMemberNumber,
      'address': instance.address,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CustomerResponseImpl _$$CustomerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerResponseImpl(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => CustomerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerResponseImplToJson(
        _$CustomerResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };
