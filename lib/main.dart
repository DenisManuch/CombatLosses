import 'package:combat_losses/core/constants/fonts_string_constants.dart';
import 'package:combat_losses/features/combat_losses/presentation/provider/combat_losses_view_model.dart';
import 'package:combat_losses/features/combat_losses/presentation/screens/combat_losses_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as provider;

void main() {
  runApp(
    provider.MultiProvider(
      providers: [
        provider.ChangeNotifierProvider<CombatLossesViewModel>(
          create: (_) => CombatLossesViewModel(),
        ),
      ],
      child: const Main(),
    ),
  );
}

///
class Main extends StatelessWidget {
  ///
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: benzinFontFamily,
            fontSize: 19,
            color: Color.fromRGBO(32, 32, 35, 1),
          ),
          bodyMedium: TextStyle(
            fontFamily: benzinFontFamily,
            fontSize: 14,
            color: Color.fromRGBO(32, 32, 35, 1),
          ),
          bodySmall: TextStyle(
            fontSize: 17,
            fontFamily: interFontFamily,
            color: Color.fromRGBO(32, 32, 35, 1),
          ),
          titleLarge: TextStyle(
            fontFamily: interFontFamily,
            fontSize: 18,
          ),
          titleMedium: TextStyle(
            fontFamily: interFontFamily,
            fontSize: 12,
          ),
          titleSmall: TextStyle(
            fontFamily: interFontFamily,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            fontFamily: interFontFamily,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            letterSpacing: 0,
          ),
          labelMedium: TextStyle(
            fontFamily: interBoltFontFamily,
            color: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            fixedSize: const Size.fromHeight(15),
            padding: EdgeInsets.zero,
          ),
        ),
      ),
      home: const CombatLossesScreen(),
    );
  }
}
