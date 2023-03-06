import 'package:combat_losses/src/constants.dart';
import 'package:combat_losses/src/models/combat_model.dart';
import 'package:combat_losses/src/provider/combat_provider.dart';
import 'package:combat_losses/ui/widgets/card_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///
class BodyInfoWidget extends StatelessWidget {
  ///
  const BodyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Stats losesItemValue =
        Provider.of<CombatProvider>(context).modelData.data.stats;
    final Increase losesItemChange =
        Provider.of<CombatProvider>(context).modelData.data.increase;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CardInfoWidget(
            image: personnelIcon,
            title: personnelText,
            losesItemValue: losesItemValue.personnelUnits,
            losesItemChange: losesItemChange.personnelUnits,
          ),
          CardInfoWidget(
            image: tankIcon,
            title: tankText,
            losesItemValue: losesItemValue.tanks,
            losesItemChange: losesItemChange.tanks,
          ),
          CardInfoWidget(
            image: bbmIcon,
            title: bbmText,
            losesItemValue: losesItemValue.armouredFightingVehicles,
            losesItemChange: losesItemChange.armouredFightingVehicles,
          ),
          CardInfoWidget(
            image: artIcon,
            title: artText,
            losesItemValue: losesItemValue.artillerySystems,
            losesItemChange: losesItemChange.artillerySystems,
          ),
          CardInfoWidget(
            image: rszvIcon,
            title: rszvText,
            losesItemValue: losesItemValue.mlrs,
            losesItemChange: losesItemChange.mlrs,
          ),
          CardInfoWidget(
            image: ppoIcon,
            title: ppoText,
            losesItemValue: losesItemValue.aaWarfareSystems,
            losesItemChange: losesItemChange.aaWarfareSystems,
          ),
          CardInfoWidget(
            image: planeIcon,
            title: planeText,
            losesItemValue: losesItemValue.planes,
            losesItemChange: losesItemChange.planes,
          ),
          CardInfoWidget(
            image: helicopterIcon,
            title: helicopterText,
            losesItemValue: losesItemValue.helicopters,
            losesItemChange: losesItemChange.helicopters,
          ),
          CardInfoWidget(
            image: autoIcon,
            title: artText,
            losesItemValue: losesItemValue.vehiclesFuelTanks,
            losesItemChange: losesItemChange.vehiclesFuelTanks,
          ),
          CardInfoWidget(
            image: shipIcon,
            title: shipText,
            losesItemValue: losesItemValue.warshipsCutters,
            losesItemChange: losesItemChange.warshipsCutters,
          ),
          CardInfoWidget(
            image: bplaIcon,
            title: bplaText,
            losesItemValue: losesItemValue.uavSystems,
            losesItemChange: losesItemChange.uavSystems,
          ),
          CardInfoWidget(
            image: specialIcon,
            title: specialText,
            losesItemValue: losesItemValue.specialMilitaryEquip,
            losesItemChange: losesItemChange.specialMilitaryEquip,
          ),
          CardInfoWidget(
            image: trkIcon,
            title: trkText,
            losesItemValue: losesItemValue.atgmSrbmSystems,
            losesItemChange: losesItemChange.atgmSrbmSystems,
          ),
          CardInfoWidget(
            image: rocketIcon,
            title: rocketText,
            losesItemValue: losesItemValue.cruiseMissiles,
            losesItemChange: losesItemChange.cruiseMissiles,
          ),
        ],
      ),
    );
  }
}
