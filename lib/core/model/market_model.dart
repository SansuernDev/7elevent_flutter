import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sevent_elevent/core/model/customer_model.dart';
import 'package:sevent_elevent/core/model/user_model.dart';

import 'product_model.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

class MarketSummaryBasket {
  final List<MarketProductCardModel> data;
  MarketSummaryBasket(this.data);

  num get getTotalPrice {
    return data.fold(0, (total, item) => total + (item.price * item.amount));
  }
}

@freezed
class MarketProductCardModel with _$MarketProductCardModel {
  factory MarketProductCardModel({
    required String productId,
    required String imageUrl,
    required String name,
    required num price,
    required num amount,
  }) = _MarketProductCardModel;
  factory MarketProductCardModel.fromJson(Map<String, dynamic> json) => _$MarketProductCardModelFromJson(json);
}

@freezed
class IBasketPayload with _$IBasketPayload {
  factory IBasketPayload({
    @JsonKey(name: 'customer_id') required String customerId,
    @JsonKey(name: 'member_id') required String memberId,
    @JsonKey(name: 'product_ids') required List<IBasketProductPayload> productIds,
    required num total,
  }) = _IBasketPayload;

  factory IBasketPayload.fromJson(Map<String, dynamic> json) => _$IBasketPayloadFromJson(json);
}

@freezed
class IBasketProductPayload with _$IBasketProductPayload {
  factory IBasketProductPayload({
    @JsonKey(name: 'product_id') required String productId,
    required num amount,
  }) = _IBasketProductPayload;

  factory IBasketProductPayload.fromJson(Map<String, dynamic> json) => _$IBasketProductPayloadFromJson(json);
}



@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required num id,
    required String orderId,
    required String orderCustomerId,
    required String orderMemberId,
    required double total,
    required DateTime createdAt,
    required Customer customer,
    required Member member,
    required List<Product> products,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}

@freezed
class Customer with _$Customer {
  const factory Customer({
    required String customerId,
    required String name,
    required String phoneNumber,
    required String allMemberNumber,
    required String address,
    required DateTime createdAt,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

@freezed
class Member with _$Member {
  const factory Member({
    required String memberId,
    required String name,
    required String username,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required String orderId,
    required String productId,
    required num amount,
    required ProductModel product
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}