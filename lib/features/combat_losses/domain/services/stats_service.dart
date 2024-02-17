import 'package:combat_losses/features/combat_losses/domain/entity/stats.dart';

///
class StatsService extends Stats {
  ///
  StatsService({
    required super.personnelUnits,
    required super.tanks,
    required super.armouredFightingVehicles,
    required super.artillerySystems,
    required super.mlrs,
    required super.aaWarfareSystems,
    required super.planes,
    required super.helicopters,
    required super.vehiclesFuelTanks,
    required super.warshipsCutters,
    required super.cruiseMissiles,
    required super.uavSystems,
    required super.specialMilitaryEquip,
    required super.atgmSrbmSystems,
    required super.submarines,
  });

  ///
  factory StatsService.fromJson(Map<String, dynamic> json) => StatsService(
        personnelUnits: json['personnel_units'] as int,
        tanks: json['tanks'] as int,
        armouredFightingVehicles: json['armoured_fighting_vehicles'] as int,
        artillerySystems: json['artillery_systems'] as int,
        mlrs: json['mlrs'] as int,
        aaWarfareSystems: json['aa_warfare_systems'] as int,
        planes: json['planes'] as int,
        helicopters: json['helicopters'] as int,
        vehiclesFuelTanks: json['vehicles_fuel_tanks'] as int,
        warshipsCutters: json['warships_cutters'] as int,
        cruiseMissiles: json['cruise_missiles'] as int,
        uavSystems: json['uav_systems'] as int,
        specialMilitaryEquip: json['special_military_equip'] as int,
        atgmSrbmSystems: json['atgm_srbm_systems'] as int,
        submarines: json['submarines'] as int,
      );

  ///
  factory StatsService.empty() => StatsService(
        personnelUnits: 0,
        tanks: 0,
        armouredFightingVehicles: 0,
        artillerySystems: 0,
        mlrs: 0,
        aaWarfareSystems: 0,
        planes: 0,
        helicopters: 0,
        vehiclesFuelTanks: 0,
        warshipsCutters: 0,
        cruiseMissiles: 0,
        uavSystems: 0,
        specialMilitaryEquip: 0,
        atgmSrbmSystems: 0,
        submarines: 0,
      );
}
