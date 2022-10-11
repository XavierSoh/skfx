import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:folio/utils/utils.dart';

class ServicesUtils {
  static const List<String> servicesIcons = [
    StaticUtils.appDev,
    StaticUtils.uiux,
    StaticUtils.rapid,
    StaticUtils.blog,
  ];

  static List<String> servicesTitles(AppLocalizations l) {
    return [l.mobileAppDev, l.responsiveWebsiteDev, l.uiUx, l.rapidPrototyping];
  }

  static List<String> servicesDescription(AppLocalizations l) {
    return [
      l.viaFlutter,
      l.websiteCreator,
      l.modernUI,
      l.rapidPrototypeDesc,
    ];
  }
}
