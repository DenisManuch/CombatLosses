import 'package:combat_losses/features/combat_losses/data/constants/colors_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/path_constants.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/body_info_widget.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/footer_widget.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/header_widget.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/marquee_widget.dart';
import 'package:flutter/material.dart';

///
class CombatLossesScreen extends StatelessWidget {
  ///
  const CombatLossesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              scale: 1,
              image: AssetImage(bgPath),
              repeat: ImageRepeat.repeat,
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.01,
                0.5,
                0.8,
              ],
              colors: [
                bgBlue,
                colorWhite,
                bgYellow,
              ],
            ),
          ),
          child: ListView(
            children: const [
              MarqueeWidget(),
              HeaderWidget(),
              BodyInfoWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
