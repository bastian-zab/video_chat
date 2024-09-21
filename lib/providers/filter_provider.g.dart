// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterHash() => r'b20bee99fdbc49462b64c5cb08839d201a68b520';

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

abstract class _$Filter extends BuildlessAutoDisposeNotifier<List<MyUser>> {
  late final List<MyUser> users;

  List<MyUser> build(
    List<MyUser> users,
  );
}

/// See also [Filter].
@ProviderFor(Filter)
const filterProvider = FilterFamily();

/// See also [Filter].
class FilterFamily extends Family<List<MyUser>> {
  /// See also [Filter].
  const FilterFamily();

  /// See also [Filter].
  FilterProvider call(
    List<MyUser> users,
  ) {
    return FilterProvider(
      users,
    );
  }

  @override
  FilterProvider getProviderOverride(
    covariant FilterProvider provider,
  ) {
    return call(
      provider.users,
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
  String? get name => r'filterProvider';
}

/// See also [Filter].
class FilterProvider
    extends AutoDisposeNotifierProviderImpl<Filter, List<MyUser>> {
  /// See also [Filter].
  FilterProvider(
    List<MyUser> users,
  ) : this._internal(
          () => Filter()..users = users,
          from: filterProvider,
          name: r'filterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filterHash,
          dependencies: FilterFamily._dependencies,
          allTransitiveDependencies: FilterFamily._allTransitiveDependencies,
          users: users,
        );

  FilterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.users,
  }) : super.internal();

  final List<MyUser> users;

  @override
  List<MyUser> runNotifierBuild(
    covariant Filter notifier,
  ) {
    return notifier.build(
      users,
    );
  }

  @override
  Override overrideWith(Filter Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilterProvider._internal(
        () => create()..users = users,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        users: users,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Filter, List<MyUser>> createElement() {
    return _FilterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterProvider && other.users == users;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, users.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilterRef on AutoDisposeNotifierProviderRef<List<MyUser>> {
  /// The parameter `users` of this provider.
  List<MyUser> get users;
}

class _FilterProviderElement
    extends AutoDisposeNotifierProviderElement<Filter, List<MyUser>>
    with FilterRef {
  _FilterProviderElement(super.provider);

  @override
  List<MyUser> get users => (origin as FilterProvider).users;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
