import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';




@freezed
class ResponseProductModel with _$ResponseProductModel {
  factory ResponseProductModel({
    required num page,
    required num limit,
    required List<ProductModel> data,
  }) = _ResponseProductModel;

  factory ResponseProductModel.fromJson(Map<String, dynamic> json) => _$ResponseProductModelFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required String productId,
    required String imageUrl,
    required String name,
    @JsonKey(
      fromJson: stringToDouble,
    )
    required num price,
    required DateTime createdAt,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}


num stringToDouble(String price) => double.tryParse(price) ?? 0.0;
