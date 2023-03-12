import 'dart:convert';

import 'package:combat_losses/features/combat_losses/domain/entity/losses.dart';
import 'package:combat_losses/features/combat_losses/domain/services/data_service.dart';

///
class LossesService extends Losses {
  ///
  LossesService({required super.message, required super.data});
///
factory LossesService.empty() => LossesService(
        message: 'message',
        data: DataService.empty(),
      );


  ///
  factory LossesService.fromRawJson(String str) =>
      LossesService.fromJson(json.decode(str) as Map<String, dynamic>);
  ///
  factory LossesService.fromJson(Map<String, dynamic> json) => LossesService(
        message: json["message"] as String,
        data: DataService.fromJson(json["data"] as Map<String, dynamic>),
      );
}
