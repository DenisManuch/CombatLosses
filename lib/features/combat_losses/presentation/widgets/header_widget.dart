import 'package:combat_losses/features/combat_losses/data/constants/path_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/size_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/text_constants.dart';
import 'package:combat_losses/features/combat_losses/presentation/provider/combat_losses_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

///
class HeaderWidget extends StatelessWidget {
  ///
  const HeaderWidget({super.key});

  ///
  Future<void> _milUrl() async {
    if (!await launchUrl(milUrl)) {
      throw Exception('Could not launch $milUrl');
    }
  }

  ///
  Future<void> _resUrl(String url) async {
    final Uri _resUrl = Uri.parse(url);
    if (!await launchUrl(_resUrl)) {
      throw Exception('Could not launch $_resUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    final resourceUrl =
        context.select((CombatLossesViewModel vm) => vm.state.data.resource);
    final dateTime =
        context.select((CombatLossesViewModel vm) => vm.state.data.date);
    final int days =
        context.select((CombatLossesViewModel vm) => vm.state.data.day);
    final String formattedDate = DateFormat('d.MM').format(dateTime);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  generalStaff,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  mainTittle,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Row(
                  children: [
                    TextButton(
                      style: Theme.of(context).textButtonTheme.style,
                      onPressed: () => _resUrl(resourceUrl),
                      child: Text(
                        'Станом на $formattedDate ',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    Text(
                      '($days-й день війни)',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset(
                milIconPath,
                scale: milIconScale,
              ),
              TextButton(
                onPressed: () => _milUrl(),
                child: Text(
                  milSite,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
