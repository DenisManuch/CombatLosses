import 'package:combat_losses/features/combat_losses/data/constants/icons_path_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/item_text_constants.dart';
import 'package:combat_losses/features/combat_losses/data/provider/combat_provider.dart';
import 'package:combat_losses/features/combat_losses/models/combat_model.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/card_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///
class BodyInfoWidget extends StatelessWidget {
  ///
  const BodyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Data losesItem = Provider.of<CombatProvider>(context).modelData.data;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CardInfoWidget(
            image: personnelIcon,
            title: personnelText,
            losesItemValue: losesItem.stats.personnelUnits,
            losesItemChange: losesItem.increase.personnelUnits,
          ),
          CardInfoWidget(
            image: tankIcon,
            title: tankText,
            losesItemValue: losesItem.stats.tanks,
            losesItemChange: losesItem.increase.tanks,
          ),
          CardInfoWidget(
            image: bbmIcon,
            title: bbmText,
            losesItemValue: losesItem.stats.armouredFightingVehicles,
            losesItemChange: losesItem.increase.armouredFightingVehicles,
          ),
          CardInfoWidget(
            image: artIcon,
            title: artText,
            losesItemValue: losesItem.stats.artillerySystems,
            losesItemChange: losesItem.increase.artillerySystems,
          ),
          CardInfoWidget(
            image: rszvIcon,
            title: rszvText,
            losesItemValue: losesItem.stats.mlrs,
            losesItemChange: losesItem.increase.mlrs,
          ),
          CardInfoWidget(
            image: ppoIcon,
            title: ppoText,
            losesItemValue: losesItem.stats.aaWarfareSystems,
            losesItemChange: losesItem.increase.aaWarfareSystems,
          ),
          CardInfoWidget(
            image: planeIcon,
            title: planeText,
            losesItemValue: losesItem.stats.planes,
            losesItemChange: losesItem.increase.planes,
          ),
          CardInfoWidget(
            image: helicopterIcon,
            title: helicopterText,
            losesItemValue: losesItem.stats.helicopters,
            losesItemChange: losesItem.increase.helicopters,
          ),
          CardInfoWidget(
            image: autoIcon,
            title: artText,
            losesItemValue: losesItem.stats.vehiclesFuelTanks,
            losesItemChange: losesItem.increase.vehiclesFuelTanks,
          ),
          CardInfoWidget(
            image: shipIcon,
            title: shipText,
            losesItemValue: losesItem.stats.warshipsCutters,
            losesItemChange: losesItem.increase.warshipsCutters,
          ),
          CardInfoWidget(
            image: bplaIcon,
            title: bplaText,
            losesItemValue: losesItem.stats.uavSystems,
            losesItemChange: losesItem.increase.uavSystems,
          ),
          CardInfoWidget(
            image: specialIcon,
            title: specialText,
            losesItemValue: losesItem.stats.specialMilitaryEquip,
            losesItemChange: losesItem.increase.specialMilitaryEquip,
          ),
          CardInfoWidget(
            image: trkIcon,
            title: trkText,
            losesItemValue: losesItem.stats.atgmSrbmSystems,
            losesItemChange: losesItem.increase.atgmSrbmSystems,
          ),
          CardInfoWidget(
            image: rocketIcon,
            title: rocketText,
            losesItemValue: losesItem.stats.cruiseMissiles,
            losesItemChange: losesItem.increase.cruiseMissiles,
          ),
        ],
      ),
    );
  }
}
