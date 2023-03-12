import 'package:combat_losses/features/combat_losses/domain/entity/data.dart';

///
abstract class Losses {
  ///
  String message;

  ///
  Data data;

  ///
  Losses({
    required this.message,
    required this.data,
  });
}
