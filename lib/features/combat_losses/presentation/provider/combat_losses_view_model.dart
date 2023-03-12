import 'package:combat_losses/features/combat_losses/domain/services/combat_losses_service.dart';
import 'package:combat_losses/features/combat_losses/domain/services/losses_service.dart';
import 'package:flutter/cupertino.dart';

///
class CombatLossesViewModel extends ChangeNotifier {
  final CombatLossesService _combatLossesService = CombatLossesService();

  LossesService _state = LossesService.empty();

  ///
  LossesService get state => _state;

  ///
  CombatLossesViewModel() {
    loadAllData();
  }

  ///
  Future<void> loadAllData() async {
    await _combatLossesService.fetchLatestData();
    updateState();
  }

  ///
  void updateState() {
    _state = _combatLossesService.combatLosses;
    notifyListeners();
  }
}
