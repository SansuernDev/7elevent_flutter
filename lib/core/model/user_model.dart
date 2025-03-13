import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sevent_elevent/core/type/main_type.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    num? id,
    required String memberId,
    required String username,
    String? password,
    required String name,
    @JsonKey(name: 'imageUrl') required String image,
    required int point,
    DateTime? createdAt,
    String? accessToken,
    required RoleType role
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class TopMember with _$TopMember {
  factory TopMember({required Period period, required DateTime startDate, required DateTime endDate, @Default([]) List<UserModel> topMembers}) = _TopMember;
  factory TopMember.fromJson(Map<String, dynamic> json) => _$TopMemberFromJson(json);
}
