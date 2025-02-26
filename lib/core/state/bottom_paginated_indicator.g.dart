// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_paginated_indicator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bottomPaginatedIndicatorHash() =>
    r'269af0a6ae36efd977b680f6146ae5f8d98387fb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$BottomPaginatedIndicator
    extends BuildlessNotifier<PaginatedStatus> {
  late final String key;

  PaginatedStatus build({
    required String key,
  });
}

/// See also [BottomPaginatedIndicator].
@ProviderFor(BottomPaginatedIndicator)
const bottomPaginatedIndicatorProvider = BottomPaginatedIndicatorFamily();

/// See also [BottomPaginatedIndicator].
class BottomPaginatedIndicatorFamily extends Family<PaginatedStatus> {
  /// See also [BottomPaginatedIndicator].
  const BottomPaginatedIndicatorFamily();

  /// See also [BottomPaginatedIndicator].
  BottomPaginatedIndicatorProvider call({
    required String key,
  }) {
    return BottomPaginatedIndicatorProvider(
      key: key,
    );
  }

  @override
  BottomPaginatedIndicatorProvider getProviderOverride(
    covariant BottomPaginatedIndicatorProvider provider,
  ) {
    return call(
      key: provider.key,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bottomPaginatedIndicatorProvider';
}

/// See also [BottomPaginatedIndicator].
class BottomPaginatedIndicatorProvider
    extends NotifierProviderImpl<BottomPaginatedIndicator, PaginatedStatus> {
  /// See also [BottomPaginatedIndicator].
  BottomPaginatedIndicatorProvider({
    required String key,
  }) : this._internal(
          () => BottomPaginatedIndicator()..key = key,
          from: bottomPaginatedIndicatorProvider,
          name: r'bottomPaginatedIndicatorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bottomPaginatedIndicatorHash,
          dependencies: BottomPaginatedIndicatorFamily._dependencies,
          allTransitiveDependencies:
              BottomPaginatedIndicatorFamily._allTransitiveDependencies,
          key: key,
        );

  BottomPaginatedIndicatorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  PaginatedStatus runNotifierBuild(
    covariant BottomPaginatedIndicator notifier,
  ) {
    return notifier.build(
      key: key,
    );
  }

  @override
  Override overrideWith(BottomPaginatedIndicator Function() create) {
    return ProviderOverride(
      origin: this,
      override: BottomPaginatedIndicatorProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  NotifierProviderElement<BottomPaginatedIndicator, PaginatedStatus>
      createElement() {
    return _BottomPaginatedIndicatorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BottomPaginatedIndicatorProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BottomPaginatedIndicatorRef on NotifierProviderRef<PaginatedStatus> {
  /// The parameter `key` of this provider.
  String get key;
}

class _BottomPaginatedIndicatorProviderElement
    extends NotifierProviderElement<BottomPaginatedIndicator, PaginatedStatus>
    with BottomPaginatedIndicatorRef {
  _BottomPaginatedIndicatorProviderElement(super.provider);

  @override
  String get key => (origin as BottomPaginatedIndicatorProvider).key;
}

String _$appLoadingIndicatorHash() =>
    r'82fbd0dea129d6a86d2657e83d3ed0ac02eb4983';

abstract class _$AppLoadingIndicator extends BuildlessNotifier<AsyncValue> {
  late final String key;

  AsyncValue build({
    required String key,
  });
}

/// See also [AppLoadingIndicator].
@ProviderFor(AppLoadingIndicator)
const appLoadingIndicatorProvider = AppLoadingIndicatorFamily();

/// See also [AppLoadingIndicator].
class AppLoadingIndicatorFamily extends Family<AsyncValue> {
  /// See also [AppLoadingIndicator].
  const AppLoadingIndicatorFamily();

  /// See also [AppLoadingIndicator].
  AppLoadingIndicatorProvider call({
    required String key,
  }) {
    return AppLoadingIndicatorProvider(
      key: key,
    );
  }

  @override
  AppLoadingIndicatorProvider getProviderOverride(
    covariant AppLoadingIndicatorProvider provider,
  ) {
    return call(
      key: provider.key,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'appLoadingIndicatorProvider';
}

/// See also [AppLoadingIndicator].
class AppLoadingIndicatorProvider
    extends NotifierProviderImpl<AppLoadingIndicator, AsyncValue> {
  /// See also [AppLoadingIndicator].
  AppLoadingIndicatorProvider({
    required String key,
  }) : this._internal(
          () => AppLoadingIndicator()..key = key,
          from: appLoadingIndicatorProvider,
          name: r'appLoadingIndicatorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$appLoadingIndicatorHash,
          dependencies: AppLoadingIndicatorFamily._dependencies,
          allTransitiveDependencies:
              AppLoadingIndicatorFamily._allTransitiveDependencies,
          key: key,
        );

  AppLoadingIndicatorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  AsyncValue runNotifierBuild(
    covariant AppLoadingIndicator notifier,
  ) {
    return notifier.build(
      key: key,
    );
  }

  @override
  Override overrideWith(AppLoadingIndicator Function() create) {
    return ProviderOverride(
      origin: this,
      override: AppLoadingIndicatorProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  NotifierProviderElement<AppLoadingIndicator, AsyncValue> createElement() {
    return _AppLoadingIndicatorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppLoadingIndicatorProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AppLoadingIndicatorRef on NotifierProviderRef<AsyncValue> {
  /// The parameter `key` of this provider.
  String get key;
}

class _AppLoadingIndicatorProviderElement
    extends NotifierProviderElement<AppLoadingIndicator, AsyncValue>
    with AppLoadingIndicatorRef {
  _AppLoadingIndicatorProviderElement(super.provider);

  @override
  String get key => (origin as AppLoadingIndicatorProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
