import 'package:combat_losses/features/combat_losses/data/constants/size_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

///
class MarqueeWidget extends StatelessWidget {
  ///
  const MarqueeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          color: Colors.black,
          height: marqueeContainerHeight,
          child: Marquee(
            textScaleFactor: marqueTextScale,
            text: rusWarshipGo,
            style: Theme.of(context).textTheme.labelMedium,
            scrollAxis: Axis.horizontal,
            velocity: marqueTextVelocity,
          ),
        ),
      ],
    );
  }
}
