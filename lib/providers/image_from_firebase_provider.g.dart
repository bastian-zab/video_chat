// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_from_firebase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageFromFirebaseHash() => r'0b4961cfe7c5b8ea9ee9cd51d940c8dd73938ec5';

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

abstract class _$ImageFromFirebase extends BuildlessAsyncNotifier<Object?> {
  late final String firebaseImagePath;

  FutureOr<Object?> build(
    String firebaseImagePath,
  );
}

/// See also [ImageFromFirebase].
@ProviderFor(ImageFromFirebase)
const imageFromFirebaseProvider = ImageFromFirebaseFamily();

/// See also [ImageFromFirebase].
class ImageFromFirebaseFamily extends Family<AsyncValue> {
  /// See also [ImageFromFirebase].
  const ImageFromFirebaseFamily();

  /// See also [ImageFromFirebase].
  ImageFromFirebaseProvider call(
    String firebaseImagePath,
  ) {
    return ImageFromFirebaseProvider(
      firebaseImagePath,
    );
  }

  @override
  ImageFromFirebaseProvider getProviderOverride(
    covariant ImageFromFirebaseProvider provider,
  ) {
    return call(
      provider.firebaseImagePath,
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
  String? get name => r'imageFromFirebaseProvider';
}

/// See also [ImageFromFirebase].
class ImageFromFirebaseProvider
    extends AsyncNotifierProviderImpl<ImageFromFirebase, Object?> {
  /// See also [ImageFromFirebase].
  ImageFromFirebaseProvider(
    String firebaseImagePath,
  ) : this._internal(
          () => ImageFromFirebase()..firebaseImagePath = firebaseImagePath,
          from: imageFromFirebaseProvider,
          name: r'imageFromFirebaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageFromFirebaseHash,
          dependencies: ImageFromFirebaseFamily._dependencies,
          allTransitiveDependencies:
              ImageFromFirebaseFamily._allTransitiveDependencies,
          firebaseImagePath: firebaseImagePath,
        );

  ImageFromFirebaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.firebaseImagePath,
  }) : super.internal();

  final String firebaseImagePath;

  @override
  FutureOr<Object?> runNotifierBuild(
    covariant ImageFromFirebase notifier,
  ) {
    return notifier.build(
      firebaseImagePath,
    );
  }

  @override
  Override overrideWith(ImageFromFirebase Function() create) {
    return ProviderOverride(
      origin: this,
      override: ImageFromFirebaseProvider._internal(
        () => create()..firebaseImagePath = firebaseImagePath,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        firebaseImagePath: firebaseImagePath,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<ImageFromFirebase, Object?> createElement() {
    return _ImageFromFirebaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageFromFirebaseProvider &&
        other.firebaseImagePath == firebaseImagePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, firebaseImagePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageFromFirebaseRef on AsyncNotifierProviderRef<Object?> {
  /// The parameter `firebaseImagePath` of this provider.
  String get firebaseImagePath;
}

class _ImageFromFirebaseProviderElement
    extends AsyncNotifierProviderElement<ImageFromFirebase, Object?>
    with ImageFromFirebaseRef {
  _ImageFromFirebaseProviderElement(super.provider);

  @override
  String get firebaseImagePath =>
      (origin as ImageFromFirebaseProvider).firebaseImagePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
