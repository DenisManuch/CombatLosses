import 'package:combat_losses/src/constants.dart';
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
            style: const TextStyle(
              fontFamily: 'Inter Bolt',
              color: Colors.white,
            ),
            scrollAxis: Axis.horizontal,
            velocity: marqueTextVelocity,
          ),
        ),
      ],
    );
  }
}
