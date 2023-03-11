import 'package:combat_losses/features/combat_losses/data/constants/api_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

/// Api Service
class ApiService {
  /// fetch latest data
  Future<String> fetchLatestData() async {
    try {
      final url = Uri.parse(apiUrlLatest);
      final response = await http.get(url);
      if (response.statusCode == statusCode200) {

        return response.body;
      }
    } catch (e) {
      debugPrint(e.toString());

      return '';
    }

    return '';
  }
}
