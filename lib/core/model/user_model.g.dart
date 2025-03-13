// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as num?,
      memberId: json['memberId'] as String,
      username: json['username'] as String,
      password: json['password'] as String?,
      name: json['name'] as String,
      image: json['imageUrl'] as String,
      point: (json['point'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      accessToken: json['accessToken'] as String?,
      role: $enumDecode(_$RoleTypeEnumMap, json['role']),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'imageUrl': instance.image,
      'point': instance.point,
      'createdAt': instance.createdAt?.toIso8601String(),
      'accessToken': instance.accessToken,
      'role': _$RoleTypeEnumMap[instance.role]!,
    };

const _$RoleTypeEnumMap = {
  RoleType.manager: 'MANAGER',
  RoleType.guest: 'GUEST',
};

_$TopMemberImpl _$$TopMemberImplFromJson(Map<String, dynamic> json) =>
    _$TopMemberImpl(
      period: $enumDecode(_$PeriodEnumMap, json['period']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      topMembers: (json['topMembers'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TopMemberImplToJson(_$TopMemberImpl instance) =>
    <String, dynamic>{
      'period': _$PeriodEnumMap[instance.period]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'topMembers': instance.topMembers,
    };

const _$PeriodEnumMap = {
  Period.all: 'all',
  Period.weekly: 'weekly',
  Period.monthly: 'monthly',
  Period.yearly: 'yearly',
};
