import 'package:combat_losses/src/constants.dart';
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
          Text(urkPeople, style: Theme.of(context).textTheme.bodySmall),
          TextButton(
            onPressed: () => _websparkUrl(),
            child: const Text(websparkName),
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
