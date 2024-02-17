import 'package:combat_losses/features/combat_losses/data/constants/text_constants.dart';
import 'package:combat_losses/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

///
class FooterWidget extends StatelessWidget {
  ///
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.urkpeople_text.tr(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextButton(
            onPressed: () => _websparkUrl(),
            child: const Text(websparkName),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () => context.setLocale(
                  const Locale('ua'),
                ),
                child: Text('UA', style: Theme.of(context).textTheme.bodySmall),
              ),
              Text('|', style: Theme.of(context).textTheme.bodySmall),
              TextButton(
                onPressed: () => context.setLocale(
                  const Locale('en'),
                ),
                child: Text('EN', style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _websparkUrl() async {
    if (!await launchUrl(websparkUrl)) {
      throw Exception('Could not launch $websparkUrl');
    }
  }
}
