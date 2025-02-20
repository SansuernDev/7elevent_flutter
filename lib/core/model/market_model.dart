import 'package:freezed_annotation/freezed_annotation.dart';

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
