// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$usersStreamHash() => r'fddc9015b5f491e9d95cc9eba3219f967f745aed';

/// See also [UsersStream].
@ProviderFor(UsersStream)
final usersStreamProvider =
    AutoDisposeStreamNotifierProvider<UsersStream, List<MyUser>>.internal(
  UsersStream.new,
  name: r'usersStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UsersStream = AutoDisposeStreamNotifier<List<MyUser>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
