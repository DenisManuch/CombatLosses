import 'package:combat_losses/features/combat_losses/data/constants/api_constants.dart';
import 'package:combat_losses/features/combat_losses/domain/services/losses_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

///
class CombatLossesService {
  ///
  LossesService _combatLosses = LossesService.empty();
  

  ///
  LossesService get combatLosses => _combatLosses;

  ///
  Future<void> fetchLatestData() async {
    try {
      final url = Uri.parse(apiUrlLatest);
      final response = await http.get(url);
      if (response.statusCode == statusCode200) {
        _combatLosses = LossesService.fromRawJson(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
