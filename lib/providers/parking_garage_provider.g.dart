// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_garage_provider.dart';

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

String _$parkingGarageRepositoryHash() =>
    r'60e96ef4cfbfd965c1b16e1a90e08713c25f29a4';

/// See also [parkingGarageRepository].
final parkingGarageRepositoryProvider =
    AutoDisposeProvider<ParkingGarageRepository>(
  parkingGarageRepository,
  name: r'parkingGarageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$parkingGarageRepositoryHash,
);
typedef ParkingGarageRepositoryRef
    = AutoDisposeProviderRef<ParkingGarageRepository>;
String _$getParkingGaragesHash() => r'8c61c9a00df35d77b7a343177560a7ff7285a532';

/// See also [getParkingGarages].
final getParkingGaragesProvider =
    AutoDisposeFutureProvider<List<ParkingGarage>>(
  getParkingGarages,
  name: r'getParkingGaragesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getParkingGaragesHash,
);
typedef GetParkingGaragesRef
    = AutoDisposeFutureProviderRef<List<ParkingGarage>>;
