// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_to_cart_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addItemToCartControllerHash() =>
    r'4eb0f6819474966470a73a18764d279d46b985f1';

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

abstract class _$AddItemToCartController extends BuildlessAsyncNotifier<void> {
  late final int id;

  FutureOr<void> build(
    int id,
  );
}

/// See also [AddItemToCartController].
@ProviderFor(AddItemToCartController)
const addItemToCartControllerProvider = AddItemToCartControllerFamily();

/// See also [AddItemToCartController].
class AddItemToCartControllerFamily extends Family<AsyncValue<void>> {
  /// See also [AddItemToCartController].
  const AddItemToCartControllerFamily();

  /// See also [AddItemToCartController].
  AddItemToCartControllerProvider call(
    int id,
  ) {
    return AddItemToCartControllerProvider(
      id,
    );
  }

  @override
  AddItemToCartControllerProvider getProviderOverride(
    covariant AddItemToCartControllerProvider provider,
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
  String? get name => r'addItemToCartControllerProvider';
}

/// See also [AddItemToCartController].
class AddItemToCartControllerProvider
    extends AsyncNotifierProviderImpl<AddItemToCartController, void> {
  /// See also [AddItemToCartController].
  AddItemToCartControllerProvider(
    int id,
  ) : this._internal(
          () => AddItemToCartController()..id = id,
          from: addItemToCartControllerProvider,
          name: r'addItemToCartControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addItemToCartControllerHash,
          dependencies: AddItemToCartControllerFamily._dependencies,
          allTransitiveDependencies:
              AddItemToCartControllerFamily._allTransitiveDependencies,
          id: id,
        );

  AddItemToCartControllerProvider._internal(
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
    covariant AddItemToCartController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AddItemToCartController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddItemToCartControllerProvider._internal(
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
  AsyncNotifierProviderElement<AddItemToCartController, void> createElement() {
    return _AddItemToCartControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddItemToCartControllerProvider && other.id == id;
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
mixin AddItemToCartControllerRef on AsyncNotifierProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AddItemToCartControllerProviderElement
    extends AsyncNotifierProviderElement<AddItemToCartController, void>
    with AddItemToCartControllerRef {
  _AddItemToCartControllerProviderElement(super.provider);

  @override
  int get id => (origin as AddItemToCartControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
