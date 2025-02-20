// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      memberId: json['memberId'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      image: json['imageUrl'] as String,
      point: (json['point'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'imageUrl': instance.image,
      'point': instance.point,
      'createdAt': instance.createdAt.toIso8601String(),
      'accessToken': instance.accessToken,
    };
