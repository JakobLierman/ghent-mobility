// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bicycle_shed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$bicycleShedRepositoryHash() =>
    r'f96281cc81d59a0318b09139fbd9412c57d275c5';

/// See also [bicycleShedRepository].
final bicycleShedRepositoryProvider =
    AutoDisposeProvider<BicycleShedRepository>(
  bicycleShedRepository,
  name: r'bicycleShedRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bicycleShedRepositoryHash,
);
typedef BicycleShedRepositoryRef
    = AutoDisposeProviderRef<BicycleShedRepository>;
String _$getBicycleShedsHash() => r'315137b32b586682aa159158cb74748ff2c9c527';

/// See also [getBicycleSheds].
final getBicycleShedsProvider = AutoDisposeFutureProvider<List<BicycleShed>>(
  getBicycleSheds,
  name: r'getBicycleShedsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getBicycleShedsHash,
);
typedef GetBicycleShedsRef = AutoDisposeFutureProviderRef<List<BicycleShed>>;
