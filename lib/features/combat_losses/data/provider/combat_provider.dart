import 'package:combat_losses/features/combat_losses/data/api/api_service.dart';
import 'package:combat_losses/features/combat_losses/models/combat_model.dart';
import 'package:flutter/cupertino.dart';

/// Combat Provider
class CombatProvider extends ChangeNotifier {
  /// Api Service
  ApiService apiService = ApiService();

  /// Combat Model
  CombatModel modelData = CombatModel.empti();

  /// Fetch All Data
  Future<void> fetchData() async {
    try {
      modelData = CombatModel.fromRawJson(await apiService.fetchLatestData());
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
