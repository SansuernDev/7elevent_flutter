import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/model/paginated_status.dart';
part 'bottom_paginated_indicator.g.dart';
@Riverpod(keepAlive: true)
class BottomPaginatedIndicator extends _$BottomPaginatedIndicator {
  @override
  PaginatedStatus build({required String key}) {
    return const PaginatedStatus.done();
  }

  void showLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = const PaginatedStatus.fetchingMore();
    });
  }

  void showError(dynamic error) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = PaginatedStatus.error(error, StackTrace.empty);
    });
  }

  void hideLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = const PaginatedStatus.done();
    });
  }
}

@Riverpod(keepAlive: true)
class AppLoadingIndicator extends _$AppLoadingIndicator {
  @override
  AsyncValue build({required String key}) {
    return AsyncData(null);
  }

  void showLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = AsyncLoading();
    });
  }

  void showError(dynamic error) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = AsyncError(error, StackTrace.empty);

    });
  }

  void hideLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = AsyncData(null);
    });
  }
}