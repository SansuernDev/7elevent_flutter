// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$marketSearchStateHash() => r'0d64570d918bc44457e48d88756dc5ea6cc7aa61';

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

abstract class _$MarketSearchState
    extends BuildlessAutoDisposeNotifier<String> {
  late final String key;

  String build({
    required String key,
  });
}

/// See also [MarketSearchState].
@ProviderFor(MarketSearchState)
const marketSearchStateProvider = MarketSearchStateFamily();

/// See also [MarketSearchState].
class MarketSearchStateFamily extends Family<String> {
  /// See also [MarketSearchState].
  const MarketSearchStateFamily();

  /// See also [MarketSearchState].
  MarketSearchStateProvider call({
    required String key,
  }) {
    return MarketSearchStateProvider(
      key: key,
    );
  }

  @override
  MarketSearchStateProvider getProviderOverride(
    covariant MarketSearchStateProvider provider,
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
  String? get name => r'marketSearchStateProvider';
}

/// See also [MarketSearchState].
class MarketSearchStateProvider
    extends AutoDisposeNotifierProviderImpl<MarketSearchState, String> {
  /// See also [MarketSearchState].
  MarketSearchStateProvider({
    required String key,
  }) : this._internal(
          () => MarketSearchState()..key = key,
          from: marketSearchStateProvider,
          name: r'marketSearchStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$marketSearchStateHash,
          dependencies: MarketSearchStateFamily._dependencies,
          allTransitiveDependencies:
              MarketSearchStateFamily._allTransitiveDependencies,
          key: key,
        );

  MarketSearchStateProvider._internal(
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
  String runNotifierBuild(
    covariant MarketSearchState notifier,
  ) {
    return notifier.build(
      key: key,
    );
  }

  @override
  Override overrideWith(MarketSearchState Function() create) {
    return ProviderOverride(
      origin: this,
      override: MarketSearchStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<MarketSearchState, String>
      createElement() {
    return _MarketSearchStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarketSearchStateProvider && other.key == key;
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
mixin MarketSearchStateRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `key` of this provider.
  String get key;
}

class _MarketSearchStateProviderElement
    extends AutoDisposeNotifierProviderElement<MarketSearchState, String>
    with MarketSearchStateRef {
  _MarketSearchStateProviderElement(super.provider);

  @override
  String get key => (origin as MarketSearchStateProvider).key;
}

String _$customerSelectStateHash() =>
    r'947b1220c7e46fd4e4d5135a6b9ca6c8cbbf074b';

/// See also [CustomerSelectState].
@ProviderFor(CustomerSelectState)
final customerSelectStateProvider =
    NotifierProvider<CustomerSelectState, CustomerModel?>.internal(
  CustomerSelectState.new,
  name: r'customerSelectStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerSelectStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CustomerSelectState = Notifier<CustomerModel?>;
String _$marketProductSelectStateHash() =>
    r'c3690d1aee119ea7cd8b21da9d9fa707b0e726d0';

/// See also [MarketProductSelectState].
@ProviderFor(MarketProductSelectState)
final marketProductSelectStateProvider = NotifierProvider<
    MarketProductSelectState, List<MarketProductCardModel>>.internal(
  MarketProductSelectState.new,
  name: r'marketProductSelectStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marketProductSelectStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarketProductSelectState = Notifier<List<MarketProductCardModel>>;
String _$marketProductListStateHash() =>
    r'dc79f8a60bab775ff2f9368f349c3b8301ff96de';

/// See also [MarketProductListState].
@ProviderFor(MarketProductListState)
final marketProductListStateProvider =
    AsyncNotifierProvider<MarketProductListState, List<ProductModel>>.internal(
  MarketProductListState.new,
  name: r'marketProductListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marketProductListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarketProductListState = AsyncNotifier<List<ProductModel>>;
String _$marketCustomerListStateHash() =>
    r'63fe6418134f6dad5fb5f0c6fe673a25e10d0e03';

/// See also [MarketCustomerListState].
@ProviderFor(MarketCustomerListState)
final marketCustomerListStateProvider = AsyncNotifierProvider<
    MarketCustomerListState, List<CustomerModel>>.internal(
  MarketCustomerListState.new,
  name: r'marketCustomerListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marketCustomerListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarketCustomerListState = AsyncNotifier<List<CustomerModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
