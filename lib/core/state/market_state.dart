import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/model/customer_model.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/model/product_model.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';

part 'market_state.g.dart';



@riverpod
class MarketSearchState extends _$MarketSearchState {
  @override
  String build({required String key}) {
    return "";
  }

  update(String value) {
    state = value;
  }

  clear() {
    state = "";
  }
}

@Riverpod(keepAlive: true)
class CustomerSelectState extends _$CustomerSelectState {
  @override
  CustomerModel? build() {
    return null;
  }

  update(CustomerModel value) {
    state = value;
  }

  clear() {
    state = null;
  }
}

@Riverpod(keepAlive: true)
class MarketProductSelectState extends _$MarketProductSelectState {
  @override
  List<MarketProductCardModel> build() {
    return [];
  }

  add(MarketProductCardModel value) {
    final exist = state.firstWhereOrNull((e) => e.productId == value.productId);
    if (exist != null) {
      state = state.map((e) {
        if (e.productId == value.productId) {
          return e.copyWith(amount: e.amount + 1);
        }
        return e;
      }).toList();
    } else {
      state = [...state, value];
    }
  }

  remove(String productId) {
    state = state.where((e) {
      return e.productId != productId;
    }).toList();
  }

  clear() {
    state = [];
  }
}

@Riverpod(keepAlive: true)
class MarketProductListState extends _$MarketProductListState {
  num _page = 0;
  final num _limit = 10;
  @override
  Future<List<ProductModel>> build() async {
    ref.onDispose(() {
      _page = 0;
      ref.invalidate(bottomPaginatedIndicatorProvider(key: marketProductListState));
    });

    final String phrase = ref.watch(marketSearchStateProvider(key: marketProductListState));
    final response = await ref.watch(mainDataSourceProvider).getMarketProducts(page: _page, limit: _limit, phrase: phrase);
    final productModel = ResponseProductModel.fromJson(response);
    return productModel.data;
  }

  void checkRequestMoreData(int index) {
    final itemPosition = index + 1;
    final requestMoreData = itemPosition % 8 == 0 && index != 0;
    final pageToRequest = itemPosition ~/ 8;

    if (requestMoreData && pageToRequest > _page) {
      _getMoreData();
    }
  }

  Future<void> _getMoreData() async {
    try {
      ref.read(bottomPaginatedIndicatorProvider(key: marketProductListState).notifier).showLoading();

      _page = _page + 1;
      final String phrase = ref.watch(marketSearchStateProvider(key: marketProductListState));
      final data = await ref.watch(mainDataSourceProvider).getMarketProducts(page: _page, limit: _limit, phrase: phrase);
      final productModel = ResponseProductModel.fromJson(data);
      state = AsyncData([...state.value!, ...productModel.data]);
      ref.read(bottomPaginatedIndicatorProvider(key: marketProductListState).notifier).hideLoading();
    } catch (e) {
      ref.read(bottomPaginatedIndicatorProvider(key: marketProductListState).notifier).showError(e);
    }
  }
}

@Riverpod(keepAlive: true)
class MarketCustomerListState extends _$MarketCustomerListState {
  num _page = 0;
  final num _limit = 10;
  @override
  Future<List<CustomerModel>> build() async {
    ref.onDispose(() {
      _page = 0;
      ref.invalidate(bottomPaginatedIndicatorProvider(key: marketCustomerListState));
    });

    final String phrase = ref.watch(marketSearchStateProvider(key: marketCustomerListState));
    if (phrase.isEmpty) {
      return [];
    }
    final response = await ref.watch(mainDataSourceProvider).getCustomer(page: _page, limit: _limit, phrase: phrase);
    final productModel = CustomerResponse.fromJson(response);
    return productModel.data;
  }

  void checkRequestMoreData(int index) {
    final itemPosition = index + 1;
    final requestMoreData = itemPosition % 8 == 0 && index != 0;
    final pageToRequest = itemPosition ~/ 8;

    if (requestMoreData && pageToRequest > _page) {
      _getMoreData();
    }
  }

  Future<void> _getMoreData() async {
    try {
      ref.read(bottomPaginatedIndicatorProvider(key: marketCustomerListState).notifier).showLoading();
      _page = _page + 1;
      final String phrase = ref.watch(marketSearchStateProvider(key: marketCustomerListState));
      final data = await ref.watch(mainDataSourceProvider).getCustomer(page: _page, limit: _limit, phrase: phrase);
      final customerResponse = CustomerResponse.fromJson(data);
      state = AsyncData([...state.value!, ...customerResponse.data]);
      ref.read(bottomPaginatedIndicatorProvider(key: marketCustomerListState).notifier).hideLoading();
    } catch (e) {
      ref.read(bottomPaginatedIndicatorProvider(key: marketCustomerListState).notifier).showError(e);
    }
  }
}
