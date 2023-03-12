import 'package:combat_losses/features/combat_losses/domain/entity/increase.dart';
import 'package:combat_losses/features/combat_losses/domain/entity/stats.dart';

///
abstract class Data {
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

  
}
