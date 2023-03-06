import 'package:combat_losses/src/constants.dart';
import 'package:combat_losses/src/provider/combat_provider.dart';
import 'package:combat_losses/ui/widgets/body_info_widget.dart';
import 'package:combat_losses/ui/widgets/footer_widget.dart';
import 'package:combat_losses/ui/widgets/header_widget.dart';
import 'package:combat_losses/ui/widgets/marquee_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

///
class MainScreen extends StatefulWidget {
  ///
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Provider.of<CombatProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
