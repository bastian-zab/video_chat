// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$usersStreamHash() => r'c49244ab8872d3b91991c60abd924d9eebac0f80';

/// See also [UsersStream].
@ProviderFor(UsersStream)
final usersStreamProvider =
    AutoDisposeStreamNotifierProvider<UsersStream, List<User>>.internal(
  UsersStream.new,
  name: r'usersStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UsersStream = AutoDisposeStreamNotifier<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
