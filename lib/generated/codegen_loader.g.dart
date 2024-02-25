// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "personnel_text": "personnel units",
  "tank_text": "tanks",
  "bbm_text": "AFV",
  "art_text": "artillery system",
  "rszv": "MLRS",
  "ppo_text": "AA warfare system",
  "plane_text": "planes",
  "helicopter_text": "helicopters",
  "auto_text": "vehicles and fuel tanks",
  "ship_text": "warships/cutters",
  "bpla_text": "UAV systems",
  "special_text": "special military equip.",
  "trk_text": "ATGM/SRBM systems",
  "rocket_text": "cruise missiles",
  "submarines_text": "submarines",
  "maintittle_text": "The total losses of the russian occupier",
  "generalstaff_text": "General Staff of the Armed Forces of Ukraine informs",
  "urkpeople_text": "2022-2023 - Ukrainian people",
  "asfor_text": "As for ",
  "dayofwar_text": "th day of war"
};
static const Map<String,dynamic> uk_UA = {
  "personnel_text": "особового складу",
  "tank_text": "танків",
  "bbm_text": "ББМ",
  "art_text": "арт. систем",
  "rszv": "РСЗВ",
  "ppo_text": "засобів ППО",
  "plane_text": "літаків",
  "helicopter_text": "гелікоптерів",
  "auto_text": "автотехніки та автоцистерн",
  "ship_text": "кораблів/катерів",
  "bpla_text": "БПЛА",
  "special_text": "спец. техніки",
  "trk_text": "установок ОТРК/ТРК",
  "rocket_text": "крилатих ракет",
  "submarines_text": "підводних човнів",
  "maintittle_text": "Загальні бойові втрати російського окупанта",
  "generalstaff_text": "Генеральний штаб ЗС України інформує",
  "urkpeople_text": "2022-2023 - Народ України",
  "asfor_text": "Станом на ",
  "dayofwar_text": "-й день війни"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "uk_UA": uk_UA};
}
