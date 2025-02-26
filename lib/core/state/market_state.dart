import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/model/customer_model.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/model/product_model.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
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

@riverpod
class CustomerProductTopBuyState extends _$CustomerProductTopBuyState {
  @override
  Future<List<ProductModel>> build() async {
    final customer = ref.watch(customerSelectStateProvider);
    if ((customer?.customerId ?? "").isNotEmpty) {
      final response = await ref.read(mainDataSourceProvider).getCustomerWithProduct(customerId: customer?.customerId ?? "");
      return (response as List).map((e) => ProductModel.fromJson(e),).toList();
    }
    return [];
  }

  clear() {
    state = AsyncData([]);
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

@riverpod
class MarketProductListState extends _$MarketProductListState {
  num _page = 0;
  final num _limit = 20;
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
    } else {
      ref.read(bottomPaginatedIndicatorProvider(key: marketProductListState).notifier).showNoMoreFetching();
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

@riverpod
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
    } else {
      ref.read(bottomPaginatedIndicatorProvider(key: marketCustomerListState).notifier).showNoMoreFetching();
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




@riverpod
class OrderListState extends _$OrderListState {
  num _page = 0;
  final num _limit = 20;
  @override
  Future<List<OrderModel>> build() async {
    ref.onDispose(() {
      _page = 0;
      ref.invalidate(bottomPaginatedIndicatorProvider(key: orderListState));
    });

    final String phrase = ref.watch(marketSearchStateProvider(key: orderListState));
    final response = await ref.watch(mainDataSourceProvider).getOrders(page: _page, limit: _limit, phrase: phrase);
    final data = (response['data'] as List).map((e) => OrderModel.fromJson(e),).toList();
    return data;
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
      ref.read(bottomPaginatedIndicatorProvider(key: orderListState).notifier).showLoading();
      _page = _page + 1;
      final String phrase = ref.watch(marketSearchStateProvider(key: orderListState));
      final response = await ref.watch(mainDataSourceProvider).getOrders(page: _page, limit: _limit, phrase: phrase);
      final data = (response['data'] as List).map((e) => OrderModel.fromJson(e),).toList();
      state = AsyncData([...state.value!, ...data]);
      ref.read(bottomPaginatedIndicatorProvider(key: orderListState).notifier).hideLoading();
    } catch (e) {
      ref.read(bottomPaginatedIndicatorProvider(key: orderListState).notifier).showError(e);
    }
  }
}


@riverpod
class MemberListState extends _$MemberListState {
  num _page = 0;
  final num _limit = 20;
  @override
  Future<List<UserModel>> build() async {
    ref.onDispose(() {
      _page = 0;
      ref.invalidate(bottomPaginatedIndicatorProvider(key: memberListState));
    });

    final String phrase = ref.watch(marketSearchStateProvider(key: memberListState));
    final response = await ref.watch(mainDataSourceProvider).getMembers(page: _page, limit: _limit, phrase: phrase);
    final data = (response['data'] as List).map((e) => UserModel.fromJson(e),).toList();
    return data;
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
      ref.read(bottomPaginatedIndicatorProvider(key: memberListState).notifier).showLoading();
      _page = _page + 1;
      final String phrase = ref.watch(marketSearchStateProvider(key: memberListState));
      final response = await ref.watch(mainDataSourceProvider).getMembers(page: _page, limit: _limit, phrase: phrase);
      final data = (response['data'] as List).map((e) => UserModel.fromJson(e),).toList();
      state = AsyncData([...state.value!, ...data]);
      ref.read(bottomPaginatedIndicatorProvider(key: memberListState).notifier).hideLoading();
    } catch (e) {
      ref.read(bottomPaginatedIndicatorProvider(key: memberListState).notifier).showError(e);
    }
  }
}


