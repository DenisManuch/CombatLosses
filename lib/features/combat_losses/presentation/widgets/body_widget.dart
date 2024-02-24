import 'package:combat_losses/features/combat_losses/data/constants/icons_path_constants.dart';
import 'package:combat_losses/features/combat_losses/domain/entity/data.dart';
import 'package:combat_losses/features/combat_losses/presentation/provider/combat_losses_view_model.dart';
import 'package:combat_losses/features/combat_losses/presentation/widgets/card_info_widget.dart';
import 'package:combat_losses/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///
class BodyWidget extends StatelessWidget {
  ///
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lossesItem =
        context.select((CombatLossesViewModel vm) => vm.state.data);

    final isLoading =
        context.select((CombatLossesViewModel vm) => vm.state.isLoading);

    return LossesDateWidget(
      lossesItem: lossesItem,
      loading: isLoading,
    );
  }
}

///
class LossesDateWidget extends StatelessWidget {
  ///
  final Data lossesItem;

  ///
  final bool loading;

  ///
  const LossesDateWidget({
    required this.lossesItem,
    required this.loading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CardInfoWidget(
            image: personnelIcon,
            title: LocaleKeys.personnel_text,
            losesItemValue: lossesItem.stats.personnelUnits,
            losesItemChange: lossesItem.increase.personnelUnits,
          ),
          CardInfoWidget(
            image: tankIcon,
            title: LocaleKeys.tank_text,
            losesItemValue: lossesItem.stats.tanks,
            losesItemChange: lossesItem.increase.tanks,
          ),
          CardInfoWidget(
            image: bbmIcon,
            title: LocaleKeys.bbm_text,
            losesItemValue: lossesItem.stats.armouredFightingVehicles,
            losesItemChange: lossesItem.increase.armouredFightingVehicles,
          ),
          CardInfoWidget(
            image: artIcon,
            title: LocaleKeys.art_text,
            losesItemValue: lossesItem.stats.artillerySystems,
            losesItemChange: lossesItem.increase.artillerySystems,
          ),
          CardInfoWidget(
            image: rszvIcon,
            title: LocaleKeys.rszv,
            losesItemValue: lossesItem.stats.mlrs,
            losesItemChange: lossesItem.increase.mlrs,
          ),
          CardInfoWidget(
            image: ppoIcon,
            title: LocaleKeys.ppo_text,
            losesItemValue: lossesItem.stats.aaWarfareSystems,
            losesItemChange: lossesItem.increase.aaWarfareSystems,
          ),
          CardInfoWidget(
            image: planeIcon,
            title: LocaleKeys.plane_text,
            losesItemValue: lossesItem.stats.planes,
            losesItemChange: lossesItem.increase.planes,
          ),
          CardInfoWidget(
            image: helicopterIcon,
            title: LocaleKeys.helicopter_text,
            losesItemValue: lossesItem.stats.helicopters,
            losesItemChange: lossesItem.increase.helicopters,
          ),
          CardInfoWidget(
            image: autoIcon,
            title: LocaleKeys.art_text,
            losesItemValue: lossesItem.stats.vehiclesFuelTanks,
            losesItemChange: lossesItem.increase.vehiclesFuelTanks,
          ),
          CardInfoWidget(
            image: shipIcon,
            title: LocaleKeys.ship_text,
            losesItemValue: lossesItem.stats.warshipsCutters,
            losesItemChange: lossesItem.increase.warshipsCutters,
          ),
          CardInfoWidget(
            image: bplaIcon,
            title: LocaleKeys.bpla_text,
            losesItemValue: lossesItem.stats.uavSystems,
            losesItemChange: lossesItem.increase.uavSystems,
          ),
          CardInfoWidget(
            image: specialIcon,
            title: LocaleKeys.special_text,
            losesItemValue: lossesItem.stats.specialMilitaryEquip,
            losesItemChange: lossesItem.increase.specialMilitaryEquip,
          ),
          CardInfoWidget(
            image: trkIcon,
            title: LocaleKeys.trk_text,
            losesItemValue: lossesItem.stats.atgmSrbmSystems,
            losesItemChange: lossesItem.increase.atgmSrbmSystems,
          ),
          CardInfoWidget(
            image: rocketIcon,
            title: LocaleKeys.rocket_text,
            losesItemValue: lossesItem.stats.cruiseMissiles,
            losesItemChange: lossesItem.increase.cruiseMissiles,
          ),
          CardInfoWidget(
            image: submarinesIcon,
            title: LocaleKeys.submarines_text,
            losesItemValue: lossesItem.stats.submarines,
            losesItemChange: lossesItem.increase.submarines,
          ),
        ],
      ),
    );
  }
}
