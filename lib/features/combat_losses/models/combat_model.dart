import 'dart:convert';

///

///
//String combatModelToJson(CombatModel data) => json.encode(data.toJson());

///
class CombatModel {
  ///
  String message;

  ///
  Data data;

  ///
  CombatModel({
    required this.message,
    required this.data,
  });
  ///
  factory CombatModel.empti() => CombatModel(
    message: 'message',
    data: Data(
      date: DateTime.now(),
      day: 1,
      resource: "https://facebook.com",
      stats: Stats(
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
      ),
      increase: Increase(
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
      ),
    ),
  );
///
  factory CombatModel.fromRawJson(String str) =>
      CombatModel.fromJson(json.decode(str) as Map<String, dynamic>);
///
  factory CombatModel.fromJson(Map<String, dynamic> json) => CombatModel(
        message: json["message"] as String,
        data: Data.fromJson(json["data"] as Map<String, dynamic>),
      );
}

///
class Data {
  ///
  DateTime date;

  ///
  int day;

  ///
  String resource;

  ///
  Stats stats;

  ///
  Increase increase;

  ///
  Data({
    required this.date,
    required this.day,
    required this.resource,
    required this.stats,
    required this.increase,
  });

  ///

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        date: DateTime.parse(json["date"] as String),
        day: json["day"] as int,
        resource: json["resource"] as String,
        stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
        increase: Increase.fromJson(json['increase'] as Map<String, dynamic>),
      );
}

///
class Stats {
  ///
  int personnelUnits;

  ///
  int tanks;

  ///
  int armouredFightingVehicles;

  ///
  int artillerySystems;

  ///
  int mlrs;

  ///
  int aaWarfareSystems;

  ///
  int planes;

  ///
  int helicopters;

  ///
  int vehiclesFuelTanks;

  ///
  int warshipsCutters;

  ///
  int cruiseMissiles;

  ///
  int uavSystems;

  ///
  int specialMilitaryEquip;

  ///
  int atgmSrbmSystems;

  ///
  Stats({
    required this.personnelUnits,
    required this.tanks,
    required this.armouredFightingVehicles,
    required this.artillerySystems,
    required this.mlrs,
    required this.aaWarfareSystems,
    required this.planes,
    required this.helicopters,
    required this.vehiclesFuelTanks,
    required this.warshipsCutters,
    required this.cruiseMissiles,
    required this.uavSystems,
    required this.specialMilitaryEquip,
    required this.atgmSrbmSystems,
  });

  ///
  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
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
      );
}

///Increase
class Increase {
  ///
  int personnelUnits;

  ///
  int tanks;

  ///
  int armouredFightingVehicles;

  ///
  int artillerySystems;

  ///
  int mlrs;

  ///
  int aaWarfareSystems;

  ///
  int planes;

  ///
  int helicopters;

  ///
  int vehiclesFuelTanks;

  ///
  int warshipsCutters;

  ///
  int cruiseMissiles;

  ///
  int uavSystems;

  ///
  int specialMilitaryEquip;

  ///
  int atgmSrbmSystems;

  ///
  Increase({
    required this.personnelUnits,
    required this.tanks,
    required this.armouredFightingVehicles,
    required this.artillerySystems,
    required this.mlrs,
    required this.aaWarfareSystems,
    required this.planes,
    required this.helicopters,
    required this.vehiclesFuelTanks,
    required this.warshipsCutters,
    required this.cruiseMissiles,
    required this.uavSystems,
    required this.specialMilitaryEquip,
    required this.atgmSrbmSystems,
  });

  ///
  factory Increase.fromJson(Map<String, dynamic> json) => Increase(
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
      );
}
