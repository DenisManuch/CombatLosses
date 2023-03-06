import 'package:combat_losses/src/provider/combat_provider.dart';
import 'package:combat_losses/ui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as provider;

void main() {
  runApp(
    provider.MultiProvider(
      providers: [
        provider.ChangeNotifierProvider<CombatProvider>(
          create: (_) => CombatProvider(),
        )
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
            fontFamily: 'Benzin',
            fontSize: 19,
            color: Color.fromRGBO(32, 32, 35, 1),
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Benzin',
            fontSize: 14,
            color: Color.fromRGBO(32, 32, 35, 1),
          ),
          bodySmall: TextStyle(
            fontSize: 17,
            fontFamily: 'Inter',
            color: Color.fromRGBO(32, 32, 35, 1),
          ),
          titleLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 18,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
          ),
          titleSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            letterSpacing: 0,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              fixedSize: const Size.fromHeight(15), padding: EdgeInsets.zero,),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
