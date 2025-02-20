import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  factory CustomerModel({
    required String customerId,
    required String name,
    required String phoneNumber,
    required String allMemberNumber,
    required String address,
    required DateTime createdAt,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

@freezed
class CustomerResponse with _$CustomerResponse {
  factory CustomerResponse({
    required int page,
    required int limit,
    required List<CustomerModel> data,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
}


class ICustomerPayload {
  final String name;
  final String phoneNumber;
  final String allMemberNumber;
  final String address;

  ICustomerPayload({
    required this.name,
    required this.phoneNumber,
    required this.allMemberNumber,
    required this.address,
  });

}
