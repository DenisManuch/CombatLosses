import 'package:combat_losses/src/constants.dart';
import 'package:combat_losses/src/models/combat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

///
class CombatProvider extends ChangeNotifier {
  ///
  double displayWidth = 70.0;

  ///
  double displayHeight = 130.0;

  ///
  CombatModel modelData = CombatModel(
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
  Future<void> fetchData() async {
    try {
      final url = Uri.parse(apiUrlLatest);
      final response = await http.get(url);
      if (response.statusCode == statusCode) {
        modelData = CombatModel.fromRawJson(response.body);
        notifyListeners();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  ///
  void displaySize(double height, double width) {
    displayHeight = height;
    displayWidth = width;
    notifyListeners();
  }
}
