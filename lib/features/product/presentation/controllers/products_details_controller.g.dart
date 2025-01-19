// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsDetailsControllerHash() =>
    r'2f63f6f9c6ddd63a635b066821f8a5b4d1aa1019';

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

abstract class _$ProductsDetailsController
    extends BuildlessAsyncNotifier<ProductsDetailsState> {
  late final String productSlug;

  FutureOr<ProductsDetailsState> build(
    String productSlug,
  );
}

/// See also [ProductsDetailsController].
@ProviderFor(ProductsDetailsController)
const productsDetailsControllerProvider = ProductsDetailsControllerFamily();

/// See also [ProductsDetailsController].
class ProductsDetailsControllerFamily
    extends Family<AsyncValue<ProductsDetailsState>> {
  /// See also [ProductsDetailsController].
  const ProductsDetailsControllerFamily();

  /// See also [ProductsDetailsController].
  ProductsDetailsControllerProvider call(
    String productSlug,
  ) {
    return ProductsDetailsControllerProvider(
      productSlug,
    );
  }

  @override
  ProductsDetailsControllerProvider getProviderOverride(
    covariant ProductsDetailsControllerProvider provider,
  ) {
    return call(
      provider.productSlug,
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
  String? get name => r'productsDetailsControllerProvider';
}

/// See also [ProductsDetailsController].
class ProductsDetailsControllerProvider extends AsyncNotifierProviderImpl<
    ProductsDetailsController, ProductsDetailsState> {
  /// See also [ProductsDetailsController].
  ProductsDetailsControllerProvider(
    String productSlug,
  ) : this._internal(
          () => ProductsDetailsController()..productSlug = productSlug,
          from: productsDetailsControllerProvider,
          name: r'productsDetailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsDetailsControllerHash,
          dependencies: ProductsDetailsControllerFamily._dependencies,
          allTransitiveDependencies:
              ProductsDetailsControllerFamily._allTransitiveDependencies,
          productSlug: productSlug,
        );

  ProductsDetailsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productSlug,
  }) : super.internal();

  final String productSlug;

  @override
  FutureOr<ProductsDetailsState> runNotifierBuild(
    covariant ProductsDetailsController notifier,
  ) {
    return notifier.build(
      productSlug,
    );
  }

  @override
  Override overrideWith(ProductsDetailsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductsDetailsControllerProvider._internal(
        () => create()..productSlug = productSlug,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productSlug: productSlug,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<ProductsDetailsController, ProductsDetailsState>
      createElement() {
    return _ProductsDetailsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsDetailsControllerProvider &&
        other.productSlug == productSlug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productSlug.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductsDetailsControllerRef
    on AsyncNotifierProviderRef<ProductsDetailsState> {
  /// The parameter `productSlug` of this provider.
  String get productSlug;
}

class _ProductsDetailsControllerProviderElement
    extends AsyncNotifierProviderElement<ProductsDetailsController,
        ProductsDetailsState> with ProductsDetailsControllerRef {
  _ProductsDetailsControllerProviderElement(super.provider);

  @override
  String get productSlug =>
      (origin as ProductsDetailsControllerProvider).productSlug;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
