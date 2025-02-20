import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String memberId,
    required String username,
    required String password,
    required String name,
    @JsonKey(name: 'imageUrl') required String image,
    required int point,
    required DateTime createdAt,
    required String accessToken,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}