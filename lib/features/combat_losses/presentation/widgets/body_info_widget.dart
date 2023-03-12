import 'package:combat_losses/features/combat_losses/data/constants/icons_path_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/item_text_constants.dart';
import 'package:combat_losses/features/combat_losses/presentation/provider/combat_losses_view_model.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/card_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///
class BodyInfoWidget extends StatelessWidget {
  ///
  const BodyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lossesItem =
        context.select((CombatLossesViewModel vm) => vm.state.data);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CardInfoWidget(
            image: personnelIcon,
            title: personnelText,
            losesItemValue: lossesItem.stats.personnelUnits,
            losesItemChange: lossesItem.increase.personnelUnits,
          ),
          CardInfoWidget(
            image: tankIcon,
            title: tankText,
            losesItemValue: lossesItem.stats.tanks,
            losesItemChange: lossesItem.increase.tanks,
          ),
          CardInfoWidget(
            image: bbmIcon,
            title: bbmText,
            losesItemValue: lossesItem.stats.armouredFightingVehicles,
            losesItemChange: lossesItem.increase.armouredFightingVehicles,
          ),
          CardInfoWidget(
            image: artIcon,
            title: artText,
            losesItemValue: lossesItem.stats.artillerySystems,
            losesItemChange: lossesItem.increase.artillerySystems,
          ),
          CardInfoWidget(
            image: rszvIcon,
            title: rszvText,
            losesItemValue: lossesItem.stats.mlrs,
            losesItemChange: lossesItem.increase.mlrs,
          ),
          CardInfoWidget(
            image: ppoIcon,
            title: ppoText,
            losesItemValue: lossesItem.stats.aaWarfareSystems,
            losesItemChange: lossesItem.increase.aaWarfareSystems,
          ),
          CardInfoWidget(
            image: planeIcon,
            title: planeText,
            losesItemValue: lossesItem.stats.planes,
            losesItemChange: lossesItem.increase.planes,
          ),
          CardInfoWidget(
            image: helicopterIcon,
            title: helicopterText,
            losesItemValue: lossesItem.stats.helicopters,
            losesItemChange: lossesItem.increase.helicopters,
          ),
          CardInfoWidget(
            image: autoIcon,
            title: artText,
            losesItemValue: lossesItem.stats.vehiclesFuelTanks,
            losesItemChange: lossesItem.increase.vehiclesFuelTanks,
          ),
          CardInfoWidget(
            image: shipIcon,
            title: shipText,
            losesItemValue: lossesItem.stats.warshipsCutters,
            losesItemChange: lossesItem.increase.warshipsCutters,
          ),
          CardInfoWidget(
            image: bplaIcon,
            title: bplaText,
            losesItemValue: lossesItem.stats.uavSystems,
            losesItemChange: lossesItem.increase.uavSystems,
          ),
          CardInfoWidget(
            image: specialIcon,
            title: specialText,
            losesItemValue: lossesItem.stats.specialMilitaryEquip,
            losesItemChange: lossesItem.increase.specialMilitaryEquip,
          ),
          CardInfoWidget(
            image: trkIcon,
            title: trkText,
            losesItemValue: lossesItem.stats.atgmSrbmSystems,
            losesItemChange: lossesItem.increase.atgmSrbmSystems,
          ),
          CardInfoWidget(
            image: rocketIcon,
            title: rocketText,
            losesItemValue: lossesItem.stats.cruiseMissiles,
            losesItemChange: lossesItem.increase.cruiseMissiles,
          ),
        ],
      ),
    );
  }
}
