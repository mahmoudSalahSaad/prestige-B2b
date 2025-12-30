// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_item_to_cart_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$removeItemToCartControllerHash() =>
    r'64cb02acbb7acb9c44d7cf530bdc7e2e61d32e18';

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

abstract class _$RemoveItemToCartController
    extends BuildlessAsyncNotifier<void> {
  late final int id;

  FutureOr<void> build(
    int id,
  );
}

/// See also [RemoveItemToCartController].
@ProviderFor(RemoveItemToCartController)
const removeItemToCartControllerProvider = RemoveItemToCartControllerFamily();

/// See also [RemoveItemToCartController].
class RemoveItemToCartControllerFamily extends Family<AsyncValue<void>> {
  /// See also [RemoveItemToCartController].
  const RemoveItemToCartControllerFamily();

  /// See also [RemoveItemToCartController].
  RemoveItemToCartControllerProvider call(
    int id,
  ) {
    return RemoveItemToCartControllerProvider(
      id,
    );
  }

  @override
  RemoveItemToCartControllerProvider getProviderOverride(
    covariant RemoveItemToCartControllerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'removeItemToCartControllerProvider';
}

/// See also [RemoveItemToCartController].
class RemoveItemToCartControllerProvider
    extends AsyncNotifierProviderImpl<RemoveItemToCartController, void> {
  /// See also [RemoveItemToCartController].
  RemoveItemToCartControllerProvider(
    int id,
  ) : this._internal(
          () => RemoveItemToCartController()..id = id,
          from: removeItemToCartControllerProvider,
          name: r'removeItemToCartControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$removeItemToCartControllerHash,
          dependencies: RemoveItemToCartControllerFamily._dependencies,
          allTransitiveDependencies:
              RemoveItemToCartControllerFamily._allTransitiveDependencies,
          id: id,
        );

  RemoveItemToCartControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<void> runNotifierBuild(
    covariant RemoveItemToCartController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(RemoveItemToCartController Function() create) {
    return ProviderOverride(
      origin: this,
      override: RemoveItemToCartControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<RemoveItemToCartController, void>
      createElement() {
    return _RemoveItemToCartControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoveItemToCartControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RemoveItemToCartControllerRef on AsyncNotifierProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;
}

class _RemoveItemToCartControllerProviderElement
    extends AsyncNotifierProviderElement<RemoveItemToCartController, void>
    with RemoveItemToCartControllerRef {
  _RemoveItemToCartControllerProviderElement(super.provider);

  @override
  int get id => (origin as RemoveItemToCartControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
