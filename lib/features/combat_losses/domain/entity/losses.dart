import 'package:combat_losses/features/combat_losses/domain/entity/data.dart';

///
abstract class Losses {
  ///
  String message;

  ///
  Data data;

  ///
  bool isLoading;

  ///
  Losses({
    required this.message,
    required this.data,
    required this.isLoading,
  });
}
