import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactUtils {
  static const List<IconData> contactIcon = [
    Icons.phone,
    Icons.mail,
  ];

  static List<String> titles(BuildContext context) {
    final l = AppLocalizations.of(context);
    return [
      l.phone,
      l.email,
    ];
  }

  static const List<String> details = [
    "(+237) 690 05 38 48",
    "contact@xaviersoh.com",
  ];
}
