// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_static_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$promotionsStaticPageControllerHash() =>
    r'7b86dff85c64298dbca966a2195b7431505a9097';

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

abstract class _$PromotionsStaticPageController
    extends BuildlessAutoDisposeAsyncNotifier<PromotionsStaticPageState> {
  late final int id;

  FutureOr<PromotionsStaticPageState> build(
    int id,
  );
}

/// See also [PromotionsStaticPageController].
@ProviderFor(PromotionsStaticPageController)
const promotionsStaticPageControllerProvider =
    PromotionsStaticPageControllerFamily();

/// See also [PromotionsStaticPageController].
class PromotionsStaticPageControllerFamily
    extends Family<AsyncValue<PromotionsStaticPageState>> {
  /// See also [PromotionsStaticPageController].
  const PromotionsStaticPageControllerFamily();

  /// See also [PromotionsStaticPageController].
  PromotionsStaticPageControllerProvider call(
    int id,
  ) {
    return PromotionsStaticPageControllerProvider(
      id,
    );
  }

  @override
  PromotionsStaticPageControllerProvider getProviderOverride(
    covariant PromotionsStaticPageControllerProvider provider,
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
  String? get name => r'promotionsStaticPageControllerProvider';
}

/// See also [PromotionsStaticPageController].
class PromotionsStaticPageControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PromotionsStaticPageController,
        PromotionsStaticPageState> {
  /// See also [PromotionsStaticPageController].
  PromotionsStaticPageControllerProvider(
    int id,
  ) : this._internal(
          () => PromotionsStaticPageController()..id = id,
          from: promotionsStaticPageControllerProvider,
          name: r'promotionsStaticPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$promotionsStaticPageControllerHash,
          dependencies: PromotionsStaticPageControllerFamily._dependencies,
          allTransitiveDependencies:
              PromotionsStaticPageControllerFamily._allTransitiveDependencies,
          id: id,
        );

  PromotionsStaticPageControllerProvider._internal(
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
  FutureOr<PromotionsStaticPageState> runNotifierBuild(
    covariant PromotionsStaticPageController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(PromotionsStaticPageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PromotionsStaticPageControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PromotionsStaticPageController,
      PromotionsStaticPageState> createElement() {
    return _PromotionsStaticPageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PromotionsStaticPageControllerProvider && other.id == id;
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
mixin PromotionsStaticPageControllerRef
    on AutoDisposeAsyncNotifierProviderRef<PromotionsStaticPageState> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PromotionsStaticPageControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PromotionsStaticPageController,
        PromotionsStaticPageState> with PromotionsStaticPageControllerRef {
  _PromotionsStaticPageControllerProviderElement(super.provider);

  @override
  int get id => (origin as PromotionsStaticPageControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
