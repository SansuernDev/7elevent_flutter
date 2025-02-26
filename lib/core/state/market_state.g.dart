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
String _$customerProductTopBuyStateHash() =>
    r'4bf039c4f939c84dcd720034f850cc325baa4ca4';

/// See also [CustomerProductTopBuyState].
@ProviderFor(CustomerProductTopBuyState)
final customerProductTopBuyStateProvider = AutoDisposeAsyncNotifierProvider<
    CustomerProductTopBuyState, List<ProductModel>>.internal(
  CustomerProductTopBuyState.new,
  name: r'customerProductTopBuyStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerProductTopBuyStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CustomerProductTopBuyState
    = AutoDisposeAsyncNotifier<List<ProductModel>>;
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
    r'87628efe2eed376400d5151b3bdedfcf8d8b42bf';

/// See also [MarketProductListState].
@ProviderFor(MarketProductListState)
final marketProductListStateProvider = AutoDisposeAsyncNotifierProvider<
    MarketProductListState, List<ProductModel>>.internal(
  MarketProductListState.new,
  name: r'marketProductListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marketProductListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarketProductListState = AutoDisposeAsyncNotifier<List<ProductModel>>;
String _$marketCustomerListStateHash() =>
    r'dc114bdd04f9c0b2cbfedd39ac0d85327be51509';

/// See also [MarketCustomerListState].
@ProviderFor(MarketCustomerListState)
final marketCustomerListStateProvider = AutoDisposeAsyncNotifierProvider<
    MarketCustomerListState, List<CustomerModel>>.internal(
  MarketCustomerListState.new,
  name: r'marketCustomerListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marketCustomerListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarketCustomerListState
    = AutoDisposeAsyncNotifier<List<CustomerModel>>;
String _$orderListStateHash() => r'99a4b1105f9ac7b52d30f8b9c2ed9d42be8c0c83';

/// See also [OrderListState].
@ProviderFor(OrderListState)
final orderListStateProvider =
    AutoDisposeAsyncNotifierProvider<OrderListState, List<OrderModel>>.internal(
  OrderListState.new,
  name: r'orderListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$orderListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OrderListState = AutoDisposeAsyncNotifier<List<OrderModel>>;
String _$memberListStateHash() => r'f8bee639f252f0f5140ef7df945c663fd79841ac';

/// See also [MemberListState].
@ProviderFor(MemberListState)
final memberListStateProvider =
    AutoDisposeAsyncNotifierProvider<MemberListState, List<UserModel>>.internal(
  MemberListState.new,
  name: r'memberListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$memberListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MemberListState = AutoDisposeAsyncNotifier<List<UserModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
