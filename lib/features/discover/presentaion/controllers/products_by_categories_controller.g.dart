// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_by_categories_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsByCategoriesControllerHash() =>
    r'09b6e11eac5782d375865cb80fccd0cd8325734c';

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

abstract class _$ProductsByCategoriesController
    extends BuildlessAutoDisposeAsyncNotifier<ProductsByCategoriesState> {
  late final String categorySlug;

  FutureOr<ProductsByCategoriesState> build(
    String categorySlug,
  );
}

/// See also [ProductsByCategoriesController].
@ProviderFor(ProductsByCategoriesController)
const productsByCategoriesControllerProvider =
    ProductsByCategoriesControllerFamily();

/// See also [ProductsByCategoriesController].
class ProductsByCategoriesControllerFamily
    extends Family<AsyncValue<ProductsByCategoriesState>> {
  /// See also [ProductsByCategoriesController].
  const ProductsByCategoriesControllerFamily();

  /// See also [ProductsByCategoriesController].
  ProductsByCategoriesControllerProvider call(
    String categorySlug,
  ) {
    return ProductsByCategoriesControllerProvider(
      categorySlug,
    );
  }

  @override
  ProductsByCategoriesControllerProvider getProviderOverride(
    covariant ProductsByCategoriesControllerProvider provider,
  ) {
    return call(
      provider.categorySlug,
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
  String? get name => r'productsByCategoriesControllerProvider';
}

/// See also [ProductsByCategoriesController].
class ProductsByCategoriesControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProductsByCategoriesController,
        ProductsByCategoriesState> {
  /// See also [ProductsByCategoriesController].
  ProductsByCategoriesControllerProvider(
    String categorySlug,
  ) : this._internal(
          () => ProductsByCategoriesController()..categorySlug = categorySlug,
          from: productsByCategoriesControllerProvider,
          name: r'productsByCategoriesControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsByCategoriesControllerHash,
          dependencies: ProductsByCategoriesControllerFamily._dependencies,
          allTransitiveDependencies:
              ProductsByCategoriesControllerFamily._allTransitiveDependencies,
          categorySlug: categorySlug,
        );

  ProductsByCategoriesControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categorySlug,
  }) : super.internal();

  final String categorySlug;

  @override
  FutureOr<ProductsByCategoriesState> runNotifierBuild(
    covariant ProductsByCategoriesController notifier,
  ) {
    return notifier.build(
      categorySlug,
    );
  }

  @override
  Override overrideWith(ProductsByCategoriesController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductsByCategoriesControllerProvider._internal(
        () => create()..categorySlug = categorySlug,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categorySlug: categorySlug,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProductsByCategoriesController,
      ProductsByCategoriesState> createElement() {
    return _ProductsByCategoriesControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsByCategoriesControllerProvider &&
        other.categorySlug == categorySlug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categorySlug.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductsByCategoriesControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ProductsByCategoriesState> {
  /// The parameter `categorySlug` of this provider.
  String get categorySlug;
}

class _ProductsByCategoriesControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ProductsByCategoriesController,
        ProductsByCategoriesState> with ProductsByCategoriesControllerRef {
  _ProductsByCategoriesControllerProviderElement(super.provider);

  @override
  String get categorySlug =>
      (origin as ProductsByCategoriesControllerProvider).categorySlug;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
