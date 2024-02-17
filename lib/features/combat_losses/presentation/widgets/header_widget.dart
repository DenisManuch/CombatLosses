import 'package:combat_losses/features/combat_losses/data/constants/path_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/size_constants.dart';
import 'package:combat_losses/features/combat_losses/data/constants/text_constants.dart';
import 'package:combat_losses/features/combat_losses/presentation/provider/combat_losses_view_model.dart';
import 'package:combat_losses/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
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
    final Uri _resUrlK = Uri.parse(url);
    if (!await launchUrl(_resUrlK)) {
      throw Exception('Could not launch $_resUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    //Intl.defaultLocale = 'en';
    initializeDateFormatting('en');
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
                  LocaleKeys.generalstaff_text,
                  style: Theme.of(context).textTheme.titleMedium,
                ).tr(),
                   const SizedBox(
                  height: 10,
                ),
                Text(
                  LocaleKeys.maintittle_text,
                  style: Theme.of(context).textTheme.bodyLarge,
                ).tr(),
                 const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextButton(
                      style: Theme.of(context).textButtonTheme.style,
                      onPressed: () => _resUrl(resourceUrl),
                      child: Text(
                        '${LocaleKeys.asfor_text.tr()}$formattedDate ',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
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
