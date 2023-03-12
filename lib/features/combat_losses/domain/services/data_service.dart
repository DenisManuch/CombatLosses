import 'package:combat_losses/features/combat_losses/domain/entity/data.dart';
import 'package:combat_losses/features/combat_losses/domain/services/increase_service.dart';
import 'package:combat_losses/features/combat_losses/domain/services/stats_service.dart';

///
class DataService extends Data {
  ///
  DataService({
    required super.date,
    required super.day,
    required super.resource,
    required super.stats,
    required super.increase,
  });

  ///
  factory DataService.fromJson(Map<String, dynamic> json) => DataService(
        date: DateTime.parse(json["date"] as String),
        day: json["day"] as int,
        resource: json["resource"] as String,
        stats: StatsService.fromJson(json['stats'] as Map<String, dynamic>),
        increase:
            IncreaseService.fromJson(json['increase'] as Map<String, dynamic>),
      );

  ///
  factory DataService.empty() => DataService(
        date: DateTime(2022, 2, 24),
        day: 1,
        resource: 'https://facebook.com',
        stats: StatsService.empty(),
        increase: IncreaseService.empty(),
      );
}
