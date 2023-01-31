// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'park_ride_provider.dart';

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

String _$parkRideRepositoryHash() =>
    r'940f31327bab0ee74bebc4f7dd302dcd9a9cf97e';

/// See also [parkRideRepository].
final parkRideRepositoryProvider = AutoDisposeProvider<ParkRideRepository>(
  parkRideRepository,
  name: r'parkRideRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$parkRideRepositoryHash,
);
typedef ParkRideRepositoryRef = AutoDisposeProviderRef<ParkRideRepository>;
String _$getParkRidesHash() => r'3d3571f85e70b5600dc4adcf2ec84b79903e389a';

/// See also [getParkRides].
final getParkRidesProvider = AutoDisposeFutureProvider<List<ParkRide>>(
  getParkRides,
  name: r'getParkRidesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getParkRidesHash,
);
typedef GetParkRidesRef = AutoDisposeFutureProviderRef<List<ParkRide>>;
